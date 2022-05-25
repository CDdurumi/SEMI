package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import dao.MessageDAO;
import dto.MessageDTO;


@WebServlet("*.mpg")
public class MyPageController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");//get
		request.setCharacterEncoding("UTF-8");
		
		String uri = request.getRequestURI();
		
		MessageDAO dao = MessageDAO.getInstance();
		Gson g= new Gson();
		try {
			if(uri.equals("/sendMsg.mpg")) { // 쪽지보내기
				String sender = (String) request.getSession().getAttribute("loginID");
				
				String title = request.getParameter("title");
				String contents = request.getParameter("contents");
				String receiver = request.getParameter("receiver");
				
				dao.insert(new MessageDTO(0, 0, title, sender, receiver, contents, ""));
				
				
			}else if(uri.equals("/receiveMsgBox.mpg")) { //받은쪽지함
				
				System.out.println("받은 쪽지함 수신확인");
				String receiver = (String)request.getSession().getAttribute("loginID");
				
//				int cpage = Integer.parseInt(request.getParameter("cpage"));
//				request.setAttribute("cpage", cpage);
				PrintWriter pw = response.getWriter();
				System.out.println(receiver);
				
				List<MessageDTO> list = dao.selectByReceivePage(receiver);
				System.out.println(list);
				String result = g.toJson(list);
				pw.append(result);
//				String pageNavi = dao.getPageNavi(cpage);
//				
//				request.setAttribute("list", list);
//				request.setAttribute("pageNavi", pageNavi);
//				
//				System.out.println(cpage);			
//				request.setAttribute("tap", "msg");
//
//				request.getRequestDispatcher("/myPage.jsp").forward(request, response);
				
			}else if(uri.equals("/sendMsgBox.mpg")) { // 보낸쪽지함
				System.out.println("보낸 쪽지함 수신확인");
				String sender = (String)request.getSession().getAttribute("loginID");
				PrintWriter pw = response.getWriter();
				System.out.println(sender);
				
//				int cpage = Integer.parseInt(request.getParameter("cpage"));
//				request.setAttribute("cpage", cpage);
				
				List<MessageDTO> list = dao.selectBySendPage(sender);
				System.out.println(list);
				
				String result = g.toJson(list);
				pw.append(result);
//				String pageNavi = dao.getPageNavi(cpage);
//				request.setAttribute("pageNavi", pageNavi);
//				request.getRequestDispatcher("/myPage.jsp").forward(request, response);
			}else if(uri.equals("detailView.mpg")) { // 쪽지 상세내용
				
			}else if(uri.equals("/deleteMsg.mpg")) { // 쪽지삭제
				
			}
		}catch(Exception e) {
			e.printStackTrace();
			response.sendRedirect("error.jsp");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

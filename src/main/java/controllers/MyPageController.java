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

import dao.BoardDAO;
import dao.JjimDAO;
import dao.MemberDAO;
import dao.MessageDAO;
import dto.BoardDTO;
import dto.MessageDTO;


@WebServlet("*.mpg")
public class MyPageController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");//get
		request.setCharacterEncoding("UTF-8");
		
		String uri = request.getRequestURI();
		
		MessageDAO dao = MessageDAO.getInstance();
		MemberDAO mdao = MemberDAO.getInstance();
		BoardDAO bdao = BoardDAO.getInstance(); 
		JjimDAO jjimDao = JjimDAO.getInstance();
		
		Gson g= new Gson();
		try {
			if(uri.equals("/sendMsg.mpg")) { // 쪽지보내기
				System.out.println("메세지 보내기 수신확인");
				int result;
				String sender = (String)request.getSession().getAttribute("loginID");
				String sender_email = (String)request.getSession().getAttribute("loginEmail");
//				int message_seq = Integer.parseInt(request.getParameter("message_seq"));
				String title = request.getParameter("title");
				String contents = request.getParameter("contents");
				String receiver = request.getParameter("receiver");
				
				String receiver_email = dao.searchEmail(receiver);
//				String receiver = dao.searchId(receiver);
				System.out.println(receiver_email + " : " +title+ " : " + contents + " : "+ receiver +" : " + sender);
				
//				if(mdao.isEmailExist(receiver)) {
//					result = dao.insert(new MessageDTO(0,0,title,sender,receiver,sender_email,receiver_email,contents,""));
//					
//				}else {
//					result = 0;
//				}
//				PrintWriter pw = response.getWriter();
				
				if(mdao.isEmailExist(receiver_email)) {
					result = dao.insert(new MessageDTO(0,0,title,sender,receiver,sender_email,receiver_email,contents,""));
					
				}else {
					result = 0;
				}
				PrintWriter pw = response.getWriter();
				
				
				
				pw.append(g.toJson(result));
//				dao.insert(new MessageDTO(0, 0, title, sender, receiver, contents, ""));
			}else if(uri.equals("/receiveMsgBox.mpg")) { //받은쪽지함
				
				System.out.println("받은 쪽지함 수신확인");
				String receiver = (String)request.getSession().getAttribute("loginID");
				String receiver_email = (String) request.getSession().getAttribute("loginEmail");
				
				int cpage = Integer.parseInt(request.getParameter("page"));
//				System.out.println(cpage);

				PrintWriter pw = response.getWriter();
				System.out.println(receiver);
				
				List<MessageDTO> list = dao.selectByReceivePage(cpage,receiver_email);
				System.out.println(list);
				String result = g.toJson(list);
				pw.append(result);
				
			}else if(uri.equals("/sendMsgBox.mpg")) { // 보낸쪽지함
				System.out.println("보낸 쪽지함 수신확인");
				String sender = (String)request.getSession().getAttribute("loginID");
				String sender_email = (String) request.getSession().getAttribute("loginEmail");
				PrintWriter pw = response.getWriter();
				System.out.println(sender);
				
				int cpage = Integer.parseInt(request.getParameter("page"));
//				request.setAttribute("cpage", cpage);
				
				List<MessageDTO> list = dao.selectBySendPage(cpage,sender_email);
				System.out.println(list);
				
				String result = g.toJson(list);
				pw.append(result);
//				String pageNavi = dao.getPageNavi(cpage);
//				request.setAttribute("pageNavi", pageNavi);
//				request.getRequestDispatcher("/myPage.jsp").forward(request, response);
			}else if(uri.equals("/detailMsg.mpg")) { // 쪽지 상세내용
				System.out.println("디테일메시지 수신확인");
				
				int seq = Integer.parseInt(request.getParameter("message_seq"));
				
				System.out.println("seq 확인 : "+ seq);
				
				MessageDTO dto = dao.selectBySeq(seq);
				
				System.out.println(dto);
				
				request.setAttribute("dto", dto);
				
				request.getRequestDispatcher("/board/messageView.jsp").forward(request, response);
				
			}else if(uri.equals("/deleteMsg.mpg")) { // 쪽지삭제
				int message_seq = Integer.parseInt(request.getParameter("message_seq"));
				
				System.out.println("메세지 삭제 응답 확인");
				
				dao.delete(message_seq);
				
				response.sendRedirect("/myPage.jsp");
				
			}else if(uri.equals("/freeboardBox.mpg")){
				System.out.println("자유 게시판 수신확인");
				String writer = (String)request.getSession().getAttribute("loginID");
				int cpage = Integer.parseInt(request.getParameter("page"));
				System.out.println(cpage);
				String boardOption ="f";
				List<BoardDTO> list = dao.selectByPageFree(cpage,boardOption, writer);
				System.out.println(list);
				
				PrintWriter pw = response.getWriter();
				
				pw.append(g.toJson(list));
//				List<BoardDTO> hotlist = bdao.selectByLikeCount(boardOption);
//				String pageNavi = bdao.getPageNavi(cpage, boardOption);
				
//				request.setAttribute("list", list);
				
			}else if(uri.equals("/galleryBox.mpg")){
				System.out.println("여행후기 게시판 수신확인");
				String writer = (String)request.getSession().getAttribute("loginID");
				int cpage = Integer.parseInt(request.getParameter("page"));
				System.out.println(cpage);
				String boardOption ="g";
				List<BoardDTO> list = dao.selectByPageFree(cpage, boardOption, writer);
				System.out.println(list);
				
				PrintWriter pw = response.getWriter();
				
				pw.append(g.toJson(list));
			}else if(uri.equals("/jobBox.mpg")){
				System.out.println("구인구직 게시판 수신확인");
				String writer = (String)request.getSession().getAttribute("loginID");
				int cpage = Integer.parseInt(request.getParameter("page"));
				System.out.println(cpage);
				String boardOption ="j";
				List<BoardDTO> list = dao.selectByPageFree(cpage, boardOption, writer);
				System.out.println(list);
				
				PrintWriter pw = response.getWriter();
				
				pw.append(g.toJson(list));
				
			}else if(uri.equals("/goMyPage.mpg")) {
				response.sendRedirect("/myPage.jsp");
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

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

import dao.ReplyDAO;
import dao.ReplyReDAO;
import dto.ReplyDTO;
import dto.ReplyReDTO;


@WebServlet("*.reply")
public class ReplyController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");//한글 안깨지게
		request.setCharacterEncoding("UTF-8");// post 방식 한글 안깨지게

		String uri = request.getRequestURI();
		ReplyDAO dao = ReplyDAO.getInstance();
		ReplyReDAO daoRe = ReplyReDAO.getInstance();
		Gson g = new Gson();
		System.out.println(uri);
		try {
			if(uri.equals("/delete.reply")){//댓글 삭제
				String reply_seq = request.getParameter("seq");
			
				int result = dao.deleteByReplySeq(reply_seq);
				PrintWriter pw = response.getWriter();
				pw.append(g.toJson(result));

			}else if(uri.equals("/modify.reply")) {//댓글 수정
				String reply_seq = request.getParameter("reply_seq");
				System.out.println(reply_seq);
				String contents = request.getParameter("replyContentModify");
				System.out.println(contents);
				int result = dao.modify(reply_seq, contents);
				PrintWriter pw = response.getWriter();
				pw.append(g.toJson(result));
				
				
			}else if(uri.equals("/list.reply")) {//댓글 리스트
				int capge = Integer.parseInt(request.getParameter("page"));
				List<ReplyDTO> list = dao.selectByPage(capge);//해당 페이지의 댓글들 
				
				PrintWriter pw = response.getWriter();
				
				pw.append(g.toJson(list));
				
				
			}else if(uri.equals("/reChatIN.reply")) {//re댓글 삽입(re댓글 등록 버튼 클릭 시 여기로)
				
				String parent_seq = request.getParameter("parent_seq"); //부모 댓글 고유seq
				String id = (String) request.getSession().getAttribute("loginID");//작성자 id
				String contents = request.getParameter("reChatContents");//re댓글 내용
				System.out.println(parent_seq + ":" + id + ":" + contents);
				int result = daoRe.insert(new ReplyReDTO(null, id, contents, null, parent_seq));//삽입
				
				PrintWriter pw = response.getWriter();
				pw.append(g.toJson(result));
				
			}else if(uri.equals("/reDelete.reply")) {//re댓글 삭제

				String reply_re_seq = request.getParameter("reply_re_seq");//re댓글 고유seq
				System.out.println(reply_re_seq);
				int result = daoRe.deleteByReplySeq(reply_re_seq);//re댓글 삭제
				PrintWriter pw = response.getWriter();
				pw.append(g.toJson(result));
				
			}else if(uri.equals("/reModify.reply")) {//re댓글 수정

				String reply_re_seq = request.getParameter("reply_re_seq");//re댓글 고유seq
				String contents = request.getParameter("replyContentModify");//re댓글 내용
				int result = daoRe.modify(reply_re_seq, contents);//re댓글 수정
				PrintWriter pw = response.getWriter();
				pw.append(g.toJson(result));
				
			}else if(uri.equals("/reList.reply")) {//re댓글 리스트

				String parent_seq = request.getParameter("parent_seq"); //부모 댓글 고유seq
				
				List<ReplyReDTO> list = daoRe.selectByParentSeq(parent_seq);//re댓글 리스트(부모 댓글 기준)
				
				PrintWriter pw = response.getWriter();
				pw.append(g.toJson(list));
				
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
			response.sendRedirect("error.jsp");
			return;
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

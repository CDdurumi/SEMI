package controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("*.freeBoard")
public class FreeBoardController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");//한글 안깨지게
		request.setCharacterEncoding("UTF-8");// post 방식 한글 안깨지게

		String uri = request.getRequestURI();

		try {
			if(uri.equals("/freeBoardMainView.freeBoard")) {//자유게시판 메인화면 출력(communityMain.jsp에서 자유게시판 메뉴 클릭 시 여기로.)

				request.getRequestDispatcher("/board/boardMain.jsp").forward(request, response);//자유게시판 메인페이지

			}else if(uri.equals("/writeFreeBoard.freeBoard")) {//자유게시판 글 작성하기 폼 출력(boardMain.jsp에서 글 작성하기 버튼 클릭 시 여기로.)
				
				response.sendRedirect("/board/freeBoardWrite.jsp");//자유게시판 글 작성 페이지 전환

			}else if(uri.equals("/writeProcessing.freeBoard")) {//게시글 작성완료 처리 과정(freeBoardWrite.jsp에서 작성완료 버튼 클릭 시 여기로.)

				response.sendRedirect("/freeBoardMainView.freeBoard?cpage=1");//자유게시판 메인화면으로 전환
				
			}else if(uri.equals("/detailView.freeBoard")) {//작성글 출력(게시판 목록에서 게시글 클릭 시 여기로.)

				request.getRequestDispatcher("/board/boardView.jsp").forward(request, response);//작성글 페이지 전환
			}else if(uri.equals("/delete.freeBoard")) {//게시글 삭제 시
				
				response.sendRedirect("/freeBoardMainView.freeBoard?cpage=1");//자유게시판 메인화면으로 전환
			}else if(uri.equals("/modity.freeBoard")) {//게시글 수정 시
				
//				response.sendRedirect("/detailView.freeBoard?seq="+seq);//작성글 출력
			}else if(uri.equals("/chat.freeBoard")) {//댓글 등록 시(작성 글에서 댓글 등록 클릭 시 여기로)

//				response.sendRedirect("/detailView.freeBoard?seq="+parent_seq);//작성글 출력
			
			}else if(uri.equals("/chat.freeBoard")) {//댓글 등록 시(작성 글에서 댓글 등록 클릭 시 여기로)
				
//				response.sendRedirect("/detailView.freeBoard?seq="+parent_seq);//작성글 출력
			}

		} catch(Exception e) {
			e.printStackTrace();
			response.sendRedirect("error.jsp");
			return;
		}


	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

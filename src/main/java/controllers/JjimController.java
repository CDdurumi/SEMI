package controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("*.jjim")
public class JjimController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");//한글 안깨지게
		request.setCharacterEncoding("UTF-8");// post 방식 한글 안깨지게

		String uri = request.getRequestURI();
		try {
			if(uri.equals("/.jjim")) {//찜 했을 때 여기로.

				//AjAX로.  jjim테이블에서 해당 게시글 seq와 현재 로그인한 id로 insert

			}else if(uri.equals("/.jjim")) {//찜 해제 했을 때 여기로
				
				//AjAX로. jjim테이블에서 해당 게시글 seq와 현재 로그인한 id로 찾아서 delete

			}else if(uri.equals("/.jjim")) {//찜한 게시글 가져오기
				
				//AjAX로. union all로 게시글 테이블들 합치고 jjim테이블 조인한 테이블에 로그인한 id에 해당하는 row들 가져오기.
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

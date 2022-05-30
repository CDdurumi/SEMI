package controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import dao.BoardDAO;
import dao.FilesDAO;
import dao.GoodDAO;
import dao.JjimDAO;
import dao.MemberDAO;
import dao.ReplyDAO;

@WebServlet("*.admin")
public class AdminController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");//한글 안깨지게
		request.setCharacterEncoding("UTF-8");// post 방식 한글 안깨지게
		
		BoardDAO dao = BoardDAO.getInstance();
		Gson g = new Gson();
		
		String uri = request.getRequestURI();
		
		try{
			
			if(uri.equals("/adiminPage.admin")) {
				String tab = request.getParameter("tab");

				if(tab.equals("one")) {

				}else if(tab.equals("two")) {
					
				}
				
				request.getRequestDispatcher("/adminPage.jsp").forward(request, response);
				
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

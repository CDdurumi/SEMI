package controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDAO;
import dto.MemberDTO;
import utils.EncryptUtils;

@WebServlet("*.member")
public class MemberController extends HttpServlet {

	public MemberController() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String uri = request.getRequestURI();
		MemberDAO dao = new MemberDAO();
		
		request.setCharacterEncoding("UTF-8");//post
		try {
			if(uri.equals("/signup.member")) {
				String id = request.getParameter("id");
				System.out.println(id);
				String pw = request.getParameter("pw");
				System.out.println(pw);
				pw = EncryptUtils.SHA512(pw);
				String email = request.getParameter("email");
				System.out.println(email);
				String information = request.getParameter("info");
				System.out.println(information);
				int result = dao.insert(new MemberDTO(id,pw,email,null,information));
				
				HttpSession session = request.getSession();
				session.setAttribute("loginID", id);
					
				
				response.sendRedirect("/index.jsp");
			}
		}catch (Exception e) {
			
		}
	}

}

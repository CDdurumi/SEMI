package controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

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
		String uri = request.getRequestURI();
		MemberDAO dao = new MemberDAO();
		Gson g= new Gson();
		response.setCharacterEncoding("UTF-8");//get
		try {
			if (uri.equals("/duplIDCheck.member")) {// 아이디 중복 확인
				System.out.println("아이디 중복확인 수신확인");
				String id = request.getParameter("id");

				boolean result = dao.isIdExist(id);
				PrintWriter pw = response.getWriter();
				pw.append(g.toJson(result));
				System.out.println(result);

			}else if (uri.equals("/isEmailExist.member")) {// 이메일 중복 확인
				String email = request.getParameter("email");
				
				System.out.println("들어온 이메일 주소 : "+email);
				
				
				boolean result = dao.isEmailExist(email);
				PrintWriter pw = response.getWriter();
				pw.append(g.toJson(result));
				System.out.println(result);

			}
			else if (uri.equals("/logout.member")) {
				request.getSession().invalidate();
				response.sendRedirect("/index.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect("errol.html");
			return;
		}
	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String uri = request.getRequestURI();
		MemberDAO dao = new MemberDAO();
		MemberDTO dto =new MemberDTO();
		Gson g= new Gson();
		request.setCharacterEncoding("UTF-8");//post
		System.out.println(uri);
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
			}else if(uri.equals("/login.member")) {
				String email = request.getParameter("email");
				System.out.println(email);
				String pw = request.getParameter("pw");
				System.out.println(pw);
				pw = EncryptUtils.SHA512(pw);
				
				System.out.println("ID PW DB에서 체크");
				boolean result = dao.isIdPwExist(email, pw);
				
				if (result) {			
					
					//유저정보
					System.out.println("유저정보 탐색");
					dto = dao.searchUser(email);			
					HttpSession session = request.getSession();
					session.setAttribute("loginID",dto.getId());
					session.setAttribute("loginEmail", dto.getEmail());
					session.setAttribute("loginJoinDate",dto.getFormdDate());
					//request.setAttribute("userList", list); 유저정보 담아놓은거 
					
					//response.sendRedirect("/index.jsp");
				}
				
					PrintWriter pwriter = response.getWriter();
					pwriter.append(g.toJson(result));
					System.out.println(result);
				
				
				
			}else if(uri.equals("/modified.member")){
				 //mypage 계정 수정 
			}
		}catch (Exception e) {
			response.sendRedirect("errol.html");
		}
	}

}

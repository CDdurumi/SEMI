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
		MemberDAO dao = MemberDAO.getInstance();
		Gson g= new Gson();
		response.setCharacterEncoding("UTF-8");//get
		try {
			if (uri.equals("/duplIDCheck.member")) {// 아이디 중복 확인
				
				String nickname = request.getParameter("nickname");

				boolean result = dao.isNickNameExist(nickname);
				PrintWriter pw = response.getWriter();
				pw.append(g.toJson(result));
				

			}else if (uri.equals("/isEmailExist.member")) {// 이메일 중복 확인
				String email = request.getParameter("email");
				
				
				
				
				boolean result = dao.isEmailExist(email);
				
				PrintWriter pw = response.getWriter();
				pw.append(g.toJson(result));
				

			}
			else if (uri.equals("/logout.member")) {
				request.getSession().invalidate();
				response.sendRedirect("/index.jsp");
			}else if(uri.equals("/goJoinPage.member")) {  //회원가입 페이지로 이동 
				response.sendRedirect("/signup.jsp");
			}else if(uri.equals("/memberOut.member")) {
				
				String email = request.getParameter("email");
				
				int result = dao.memberOut(email);
				
				request.getSession().invalidate();
				PrintWriter pw = response.getWriter();
				pw.append(g.toJson(result));
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
		
		try {
			if(uri.equals("/signup.member")) {
				String nickname = request.getParameter("nickname");
				String pw = request.getParameter("pw");
				pw = EncryptUtils.SHA512(pw);
				String email = request.getParameter("email");
				
				String information = request.getParameter("info");
				
				int result = dao.insert(new MemberDTO(nickname,pw,email,null,information,null));
				
				
				HttpSession session = request.getSession();
				session.setAttribute("loginID", nickname);
				session.setAttribute("loginEmail", email);
//				session.setAttribute("loginJoinDate",dto.getFormdDate());
					
				
				response.sendRedirect("/index.jsp");
			}else if(uri.equals("/login.member")) {
				String email = request.getParameter("email");
				
				String pw = request.getParameter("pw");
				
				pw = EncryptUtils.SHA512(pw);
				
				
				boolean result = dao.isEmailPwExist(email, pw);
				
				if (result) {			
					
					//유저정보
					
					dto = dao.searchUser(email);			
					HttpSession session = request.getSession();
					session.setAttribute("loginID",dto.getId());
					session.setAttribute("loginEmail", dto.getEmail());
					session.setAttribute("loginJoinDate",dto.getFormdDate());
					session.setAttribute("loginIsAdmin",dto.getIsadmin());
					//request.setAttribute("userList", list); 유저정보 담아놓은거 
					
					//response.sendRedirect("/index.jsp");
				}
				
					PrintWriter pwriter = response.getWriter();
					pwriter.append(g.toJson(result));
					
				
				
				
			}else if(uri.equals("/modified.member")){
				 String id = (String)request.getSession().getAttribute("loginID");
				 String pw = request.getParameter("pw");
				 
				 pw = EncryptUtils.SHA512(pw);
				 
				 boolean result = dao.isModifiedPossible(id, pw);
				 
				 
				 PrintWriter pr = response.getWriter();
				 pr.append(g.toJson(result));
			
			}else if(uri.equals("/modifiedOk.member")) {
				
				String id = request.getParameter("id");
				String pw = request.getParameter("pw");
				pw = EncryptUtils.SHA512(pw);
				
				
				String email = (String)request.getSession().getAttribute("loginEmail");
				int result = dao.modifiedUser(id, pw, email);
				HttpSession session = request.getSession();
				session.setAttribute("loginID",id);
				PrintWriter pr = response.getWriter();
				pr.append(g.toJson(result));
			}else if (uri.equals("/resetpw.member")) {
				System.out.println("resetpw");
				String email = request.getParameter("email");
				String nickname = request.getParameter("nickname");
				String pw = request.getParameter("pw");
				pw = EncryptUtils.SHA512(pw);
				
				int result = dao.resetpw(email,nickname,pw);
				
				PrintWriter pr = response.getWriter();
				 pr.append(g.toJson(result));
				
			}
		}catch (Exception e) {
			response.sendRedirect("error.jsp");
		}
	}

}

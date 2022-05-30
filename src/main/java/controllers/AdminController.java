package controllers;

import java.io.IOException;
import java.util.List;

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
import dto.BoardDTO;
import dto.FilesDTO;

@WebServlet("*.admin")
public class AdminController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");//한글 안깨지게
		request.setCharacterEncoding("UTF-8");// post 방식 한글 안깨지게
		
		BoardDAO boardDao = BoardDAO.getInstance();
		Gson g = new Gson();
		
		String uri = request.getRequestURI();
		
		try{
			
			if(uri.equals("/adiminPage.admin")) {
				String boardOption = "f";

				int cpage = Integer.parseInt(request.getParameter("cpage"));
				request.setAttribute("cpage", cpage);
				List<BoardDTO> list = boardDao.selectByPage(cpage,boardOption); //게시글 별 리스트
				String pageNavi = boardDao.getAdminPageNavi(cpage, boardOption);//관리자 게시글 전용 페이징
				
				request.setAttribute("list", list);
				request.setAttribute("navi", pageNavi);
				
				//공지글 리스트
				List<BoardDTO> noticeList = boardDao.selectNotice(boardOption);
				request.setAttribute("noticeList", noticeList);
				
				request.getRequestDispatcher("/adminPage.jsp").forward(request, response);
				
			}else if(uri.equals("/adiminPageTap1.admin")) {
				
				String boardOption = request.getParameter("boardOption");

				int cpage = Integer.parseInt(request.getParameter("cpage"));
				request.setAttribute("cpage", cpage);
				List<BoardDTO> list = boardDao.selectByPage(cpage,boardOption); //게시글 별 리스트
				String pageNavi = boardDao.getAdminPageNavi(cpage, boardOption);//관리자 게시글 전용 페이징
				
				request.setAttribute("list", list);
				request.setAttribute("navi", pageNavi);
				
				//공지글 리스트
				List<BoardDTO> noticeList = boardDao.selectNotice(boardOption);
				request.setAttribute("noticeList", noticeList);
				
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

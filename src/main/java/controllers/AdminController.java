package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import dao.BoardDAO;
import dao.MemberDAO;
import dto.BoardDTO;
import dto.MemberDTO;

@WebServlet("*.admin")
public class AdminController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");//한글 안깨지게
		request.setCharacterEncoding("UTF-8");// post 방식 한글 안깨지게
		
		BoardDAO boardDao = BoardDAO.getInstance();
		MemberDAO memberDao = MemberDAO.getInstance();
		MemberDTO dto =new MemberDTO();
		Gson g = new Gson();
		
		String uri = request.getRequestURI();
		
		try{
			
			if(uri.equals("/adiminPage.admin")) {
				//탭1 정보///////////////
				String boardOption = "f";
				int cpage = 1;
				request.setAttribute("cpage", cpage);
				List<BoardDTO> list = boardDao.selectByPage(cpage,boardOption); //게시글 별 리스트
				String pageNavi = boardDao.getAdminPageNavi(cpage, boardOption);//관리자 게시글 전용 페이징
				request.setAttribute("list", list);
				request.setAttribute("navi", pageNavi);
				//공지글 리스트
				List<BoardDTO> noticeList = boardDao.selectNotice(boardOption);
				request.setAttribute("noticeList", noticeList);
				
				
				//탭2 정보///////////////////
				
				
				
				request.getRequestDispatcher("/adminPage.jsp").forward(request, response);
				
			}else if(uri.equals("/adiminPageTap1.admin")) {
				
				String boardOption = request.getParameter("boardOption");
				request.setAttribute("boardOption", boardOption);//관리자 페이지에서 받아서 게시글 콤보박스 set하기 위함.

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
				
			}else if(uri.equals("/adiminPageTap1Search.admin")) {
				
				int cpage = Integer.parseInt(request.getParameter("cpage"));//페이징네비 페이지 넘버
				String boardOption = request.getParameter("boardOption"); //게시판 옵션(f:자유게시판, g:여행후기, j:구인구직, r:맛집, h:숙소리뷰)
				String serchOption = request.getParameter("serchOption"); //검색 옵션(id, title, contents)
				String contents = request.getParameter("contents"); //검색 내용
				
				List<BoardDTO> list = boardDao.search(cpage, serchOption, contents, boardOption);//검색 결과 게시글 리스트	
				String pageNavi = boardDao.getAdminSearchPageNavi(cpage, boardOption, serchOption, contents);//관리자 게시글 전용 페이징

				request.setAttribute("cpage", cpage);
				request.setAttribute("boardOption", boardOption);//관리자 페이지에서 받아서 게시글 콤보박스 set하기 위함.
				request.setAttribute("list", list);
				request.setAttribute("navi", pageNavi);
				
				//공지글 리스트
				List<BoardDTO> noticeList = boardDao.selectNotice(boardOption);
				request.setAttribute("noticeList", noticeList);
				
				request.getRequestDispatcher("/adminPage.jsp").forward(request, response);
			}else if(uri.equals("/searchMember.admin")){
				System.out.println("멤버정보 수신확인");
				
				int cpage = Integer.parseInt(request.getParameter("page"));
				System.out.println(cpage);
				List<MemberDTO> list = memberDao.selectByMemberPage(cpage);
				System.out.println(list);
				
				PrintWriter pw = response.getWriter();
				
				pw.append(g.toJson(list));
			}else if(uri.equals("/adiminPageTap2Search.admin")) {
				int capge = Integer.parseInt(request.getParameter("page"));
				String sDate = request.getParameter("sDate");
				String eDate = request.getParameter("eDate");
				
				List<MemberDTO> list = new ArrayList<MemberDTO>();
				
				String searchOption = request.getParameter("searchOption"); //검색 옵션(id, title, contents)
				System.out.println(searchOption);
				String contents = request.getParameter("Membercontents"); //검색 내용
				System.out.println(contents);
				
				if(searchOption.equals("searchNick")) {
					System.out.println("닉네임으로 검색 실행");
					list = memberDao.searchUserId(capge,contents ,sDate, eDate);
				}else if(searchOption.equals("searchEmail")) {
					System.out.println("이메일으로 검색 실행");
					list = memberDao.searchUserEmail(capge,contents, sDate, eDate);
				}
				
				PrintWriter pw = response.getWriter();

				pw.append(g.toJson(list));
				//공지글 리스트
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

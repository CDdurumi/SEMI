package controllers;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.JsonObject;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import dao.BoardDAO;
import dao.FilesDAO;
import dao.GoodDAO;
import dao.JjimDAO;
import dao.ReplyDAO;
import dto.BoardDTO;
import dto.FilesDTO;
import dto.ReplyDTO;

@WebServlet("*.board")
public class BoardController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");//한글 안깨지게
		request.setCharacterEncoding("UTF-8");// post 방식 한글 안깨지게

		BoardDAO dao = BoardDAO.getInstance();
		FilesDAO filesDAO = FilesDAO.getInstance();
		JjimDAO jjimDao = JjimDAO.getInstance();
		GoodDAO goodDao = GoodDAO.getInstance();
		ReplyDAO replyDao = ReplyDAO.getInstance();
		
		String uri = request.getRequestURI();
		try {
			if(uri.equals("/boardMainView.board")) {//자유게시판 메인화면 출력(communityMain.jsp에서 자유게시판 메뉴 클릭 시 여기로.)
				int cpage = Integer.parseInt(request.getParameter("cpage"));
				request.setAttribute("cpage", cpage);
				String boardOption ="f";
				List<BoardDTO> list = dao.selectByPage(cpage,boardOption);
				List<BoardDTO> hotlist = dao.selectByLikeCount(boardOption);
				
				String pageNavi = dao.getPageNavi(cpage, boardOption);
				
				request.setAttribute("list", list);
				request.setAttribute("hotlist", hotlist);
				request.setAttribute("navi", pageNavi);
				
				request.getRequestDispatcher("/board/boardMain.jsp").forward(request, response);//자유게시판 메인페이지

			}else if(uri.equals("/galleryMain.board")) {//여행후기 메인화면 출력
				int cpage = Integer.parseInt(request.getParameter("cpage"));
				request.setAttribute("cpage", cpage);
				String boardOption ="g";
				List<BoardDTO> list = dao.selectByPage(cpage,boardOption);
				List<BoardDTO> hotlist = dao.selectByLikeCount(boardOption);
				
				String pageNavi = dao.getPageNavi(cpage, boardOption);
				
				request.setAttribute("list", list);
				request.setAttribute("hotlist", hotlist);
				request.setAttribute("navi", pageNavi);
				
				List<FilesDTO> filesDao = filesDAO.selectSysName(boardOption);//후기 게시글 프로필 - sys_name get(해당게시글seq와 sys_name담겨 있음).
				request.setAttribute("porfileList", filesDao);
				request.setAttribute("profilePath", "/files/");
				
				request.getRequestDispatcher("/board/gallery.jsp").forward(request, response);//여행후기 메인페이지
				
			}else if(uri.equals("/jobMain.board")) {//구인구직 메인화면 출력
				int cpage = Integer.parseInt(request.getParameter("cpage"));
				request.setAttribute("cpage", cpage);
				String boardOption ="j";
				List<BoardDTO> list = dao.selectByPage(cpage,boardOption);
				List<BoardDTO> hotlist = dao.selectByLikeCount(boardOption);
				
				String pageNavi = dao.getPageNavi(cpage, boardOption);
				
				request.setAttribute("list", list);
				request.setAttribute("hotlist", hotlist);
				request.setAttribute("navi", pageNavi);
				
				request.getRequestDispatcher("/board/jobMain.jsp").forward(request, response);//구인구직 메인페이지
				
			}else if(uri.equals("/foodMain.board")) {//맛집 메인화면 출력
				int cpage = Integer.parseInt(request.getParameter("cpage"));
				request.setAttribute("cpage", cpage);
				String boardOption ="r";
				List<BoardDTO> list = dao.selectByPage(cpage,boardOption);
				List<BoardDTO> hotlist = dao.selectByLikeCount(boardOption);
				
				String pageNavi = dao.getPageNavi(cpage, boardOption);
				
				request.setAttribute("list", list);
				request.setAttribute("hotlist", hotlist);
				request.setAttribute("navi", pageNavi);
				
				request.getRequestDispatcher("/board/foodMain.jsp").forward(request, response);//맛집 메인페이지
				
			}else if(uri.equals("/houseMain.board")) {//숙소리뷰 메인화면 출력
				int cpage = Integer.parseInt(request.getParameter("cpage"));
				request.setAttribute("cpage", cpage);
				String boardOption ="h";
				List<BoardDTO> list = dao.selectByPage(cpage,boardOption);
				List<BoardDTO> hotlist = dao.selectByLikeCount(boardOption);
				
				String pageNavi = dao.getPageNavi(cpage, boardOption);
				
				request.setAttribute("list", list);
				request.setAttribute("hotlist", hotlist);
				request.setAttribute("navi", pageNavi);
				
				request.getRequestDispatcher("/board/houseMain.jsp").forward(request, response);//숙소리뷰 메인페이지
				
			}else if(uri.equals("/editorReMain.board")) {//애디터 추천글 메인화면 출력
				int cpage = Integer.parseInt(request.getParameter("cpage"));
				request.setAttribute("cpage", cpage);
				String boardOption ="e";
				List<BoardDTO> list = dao.selectByPage(cpage,boardOption);
				List<BoardDTO> hotlist = dao.selectByLikeCount(boardOption);
				
				String pageNavi = dao.getPageNavi(cpage, boardOption);
				
				request.setAttribute("list", list);
				request.setAttribute("hotlist", hotlist);
				request.setAttribute("navi", pageNavi);

				List<FilesDTO> filesDao = filesDAO.selectSysName(boardOption);//애디터추천 게시글 프로필 - sys_name get(해당게시글seq와 sys_name담겨 있음).
				request.setAttribute("porfileList", filesDao);
				request.setAttribute("profilePath", "/files/");
				
				
				request.getRequestDispatcher("/board/editorReMain.jsp").forward(request, response);//애디터추천 메인페이지
				
			}else if(uri.equals("/writeboard.board")) {//게시판 글 작성하기 폼 출력(boardMain.jsp에서 글 작성하기 버튼 클릭 시 여기로.)
				response.sendRedirect("/board/boardWrite.jsp");//게시판 글 작성 페이지 전환
				
			}else if(uri.equals("/writeProcessing.board")) {//게시글 작성완료 처리 과정(boardWrite.jsp에서 작성완료 버튼 클릭 시 여기로.)
				
				int maxSize = 1024*1024*10;//파일허용 크기
				String savePath = request.getServletContext().getRealPath("files");//게시판 업로드 파일 저장 경로	
//				System.out.println(savePath);
				File filePath = new File(savePath);
				if(!filePath.exists()) {
					filePath.mkdir();
				}
				MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, "UTF8", new DefaultFileRenamePolicy() );

				String writer = (String) request.getSession().getAttribute("loginID");//로그인 id
//				System.out.println(writer);

				String title = multi.getParameter("title");
				String contents = multi.getParameter("contents");
				
				//게시판 옵션(게시판 선택 값 cf.f:자유게시판, g:여행후기, j:구인구직, r:맛집, h:숙소리뷰, e:애디터추천글(관리자만 사용))
				String boardOption = multi.getParameter("boardOption");
				String seq = dao.getSeqNextVal(boardOption); //해당 작성글 넘버 가져오기(해당 게시판의 seq)
				
				//게시글 저장 //
				dao.insert(new BoardDTO(seq, writer, title, contents, null, 0, 0, 0));

				//업로드 파일 정보 저장
				Enumeration<String> e = multi.getFileNames();
				while(e.hasMoreElements()){
					String name = e.nextElement();
					String oriName = multi.getOriginalFileName(name);//원본파일이름
					String sysName = multi.getFilesystemName(name);//서버저장파일이름
					if( !(sysName == null || sysName.isEmpty()) ) {
						filesDAO.insert(new FilesDTO(0, oriName, sysName, seq));//파일 정보 저장
					}	
				}
				
				response.sendRedirect("/boardMainView.board?cpage=1");//자유게시판 메인화면으로 전환
	
			}else if(uri.equals("/detailView.board")) {//작성글 출력(게시판 목록에서 게시글 클릭 시 여기로.)
				//테스트용 하드코딩
//				String seq = "f75";
				String seq = request.getParameter("seq"); //해당 게시글 고유seq
//				
				int cpage = Integer.parseInt(request.getParameter("cpage"));
				request.setAttribute("cpage", cpage);
				if(request.getHeader("referer").equals("http://localhost/boardMainView.board?cpage="+cpage)){//이전 주소가 이와 같다면, 조회 수 증가
					dao.viewCountUp(seq);//조회수 증가
				}

				BoardDTO dto = dao.selectBySeq(seq);//고유seq에 해당하는 게시글 정보get
				request.setAttribute("dto", dto);

//				List<ReplyDTO> replyList = replayDAO.selectAll();//댓글 정보 가져오기 All
//				request.setAttribute("replyList", replyList);
				
				if((String) request.getSession().getAttribute("loginID") != null) {
					String id = (String) request.getSession().getAttribute("loginID");//로그인 id
					request.setAttribute("isBoardJjim", dao.isBoardJjim(seq, id));//해당 게시글에 좋아요 했는지 정보
					request.setAttribute("isBoardGood", dao.isBoardGood(seq, id));//해당 게시글에 좋아요 했는지 정보//해당 게시글에 찜 했는지 정보
				}

				
				int totalPage = replyDao.getTotalPage();//댓글 총 페이지 수
				request.setAttribute("totalPage", totalPage);
				
				
				request.getRequestDispatcher("/board/boardView.jsp").forward(request, response);//작성글 페이지 전환

			}else if(uri.equals("/delete.board")) {//게시글 삭제 시				
				String seq = request.getParameter("seq");
				dao.delete(seq);//게시글 삭제
				
				response.sendRedirect("/boardMainView.board?cpage=1");//자유게시판 메인화면으로 전환
				
			}else if(uri.equals("/modiPage.board")) {//게시글 수정 버튼 클릭 시
				String all_board_seq = request.getParameter("seq");//게시글 고유 넘버
//				System.out.println(all_board_seq);
				int cpage = Integer.parseInt(request.getParameter("cpage"));
				
				BoardDTO dto = dao.selectBySeq(all_board_seq);//고유seq에 해당하는 게시글 정보get
				request.setAttribute("cpage", cpage);
				request.setAttribute("dto", dto);
				
				request.getRequestDispatcher("/board/boardModi.jsp").forward(request, response);//수정하기 페이지로 전환

			}else if(uri.equals("/modify.board")) {//게시글 수정 시(수정완료버튼)
				
				int maxSize = 1024*1024*10;//파일허용 크기
				String savePath = request.getServletContext().getRealPath("files");//자유게시판 업로드 파일 저장 경로	
//				System.out.println(savePath);
				File filePath = new File(savePath);
				if(!filePath.exists()) {
					filePath.mkdir();
				}
				MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, "UTF8", new DefaultFileRenamePolicy() );

				String writer = (String) request.getSession().getAttribute("loginID");//로그인 id
//				System.out.println(writer);

				String title = multi.getParameter("title");
				String contents = multi.getParameter("contents");
				
				
				String seq = multi.getParameter("seq"); //해당 작성글 넘버 가져오기
				
				//게시글 수정 //
				dao.modifyPost(new BoardDTO(seq, writer, title, contents, null, 0, 0, 0));

				//업로드 파일 정보 저장
				Enumeration<String> e = multi.getFileNames();
				while(e.hasMoreElements()){
					String name = e.nextElement();
					String oriName = multi.getOriginalFileName(name);//원본파일이름
					String sysName = multi.getFilesystemName(name);//서버저장파일이름
					if( !(sysName == null || sysName.isEmpty()) ) {
						filesDAO.insert(new FilesDTO(0, oriName, sysName, seq));//파일 정보 저장
					}	
				}
				
				System.out.println(seq);
				response.sendRedirect("/detailView.board?cpage=1&seq="+seq+"");//자유게시판 메인화면으로 전환
				
				
			}else if(uri.equals("/chat.board")) {//댓글 등록 시(작성 글에서 댓글 등록 클릭 시 여기로)
				
				String parent_seq = request.getParameter("parent_seq"); //해당 게시글 고유seq
				String id = (String) request.getSession().getAttribute("loginID");
				String contents = request.getParameter("chatContents");
				
				replyDao.insert(new ReplyDTO(null, id, contents, null, parent_seq));

//				PrintWriter pw = response.getWriter();
//				pw.append(g.toJson(result));
				
			}else if(uri.equals("/goodClick.board")) {//좋아요 클릭 시
				//테스트용 하드코딩
//				String seq = "f75";
				String seq = request.getParameter("seq"); //해당 게시글 고유seq
				int upDown =Integer.parseInt(request.getParameter("upDown"));//( 1:선택 , 0:해제)
//				System.out.println(seq);
//				System.out.println(upDown);

				dao.likeCountUpDown(seq, upDown);//좋아요 증감
				
				String id = (String) request.getSession().getAttribute("loginID");//로그인 id
				if(upDown == 1) {
					goodDao.insertgood(seq, id);//좋아요 테이블에 게시글 정보(해당 게시글seq, 내 id) 추가
				}else if(upDown == 0) {
					goodDao.deletegood(seq, id);//좋아요 테이블에서 게시글 정보 삭제
				}
				
				int likeCount = dao.getLikeCount(seq);//좋아요 개수 get.
			    //좋아요 개수를 JSON 형식으로 보내주기 위한 설정
				PrintWriter pw = response.getWriter();
				JsonObject jobj = new JsonObject();
				jobj.addProperty("likeCount", likeCount);
				pw.append(jobj.toString());
				
			}else if(uri.equals("/jjimClick.board")) {//찜 클릭 시
				
				//테스트용 하드코딩
//				String seq = "f75";
				String seq = request.getParameter("seq"); //해당 게시글 고유seq
				int upDown =Integer.parseInt(request.getParameter("upDown"));//( 1:선텍 , 0:해제)
//				System.out.println(upDown);

				dao.jjimCountUpDown(seq, upDown);//찜 증감
				
				String id = (String) request.getSession().getAttribute("loginID");//로그인 id	
				if(upDown == 1) {
					jjimDao.insertJjim(seq, id);//찜 테이블에 추가
				}else if(upDown == 0) {
					jjimDao.deleteJjim(seq, id);//찜 테이블에서 삭제
				}
				
				int jjimCount = dao.getJjimCount(seq);//찜 개수 get.
			    //찜 개수를 JSON 형식으로 보내주기 위한 설정
				PrintWriter pw = response.getWriter();
				JsonObject jobj = new JsonObject();
				jobj.addProperty("jjimCount", jjimCount);
//				System.out.println(jjimCount);
				pw.append(jobj.toString());
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

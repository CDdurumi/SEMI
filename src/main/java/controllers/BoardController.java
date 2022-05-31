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

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import dao.BoardDAO;
import dao.FilesDAO;
import dao.GoodDAO;
import dao.JjimDAO;
import dao.MemberDAO;
import dao.ReplyDAO;
import dto.BoardDTO;
import dto.FilesDTO;
import dto.GoodDTO;
import dto.JjimDTO;
import dto.MemberDTO;
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
		MemberDAO memberDao = MemberDAO.getInstance();
		Gson g = new Gson();
		
		String uri = request.getRequestURI();
		try {
			if(uri.equals("/communityMain.board")) {
				
				///////자유게시판 화제 게시글///////
				String boardOption ="f";
				List<BoardDTO> fHotlist = dao.selectByLikeCount(boardOption);
				request.setAttribute("fHotlist", fHotlist);
				///////구인구직 화제 게시글///////
				boardOption ="j";
				List<BoardDTO> jHotlist = dao.selectByLikeCount(boardOption);
				request.setAttribute("jHotlist", jHotlist);
				///////맛집 화제 게시글///////
				boardOption ="r";
				List<BoardDTO> rHotlist = dao.selectByLikeCount(boardOption);
				request.setAttribute("rHotlist", rHotlist);

				///////여행후기 화제 게시글///////
				boardOption ="g";
				List<BoardDTO> gHotlist = dao.selectByLikeCount(boardOption);
				request.setAttribute("gHotlist", gHotlist);
				List<FilesDTO> gFilesDao = filesDAO.selectSysName(boardOption);//여행후기 게시글 프로필 - sys_name get(해당게시글seq와 sys_name담겨 있음).
				request.setAttribute("jobPorfileList", gFilesDao);
				request.setAttribute("profilePath", "/files/");
				request.getRequestDispatcher("/board/communityMain.jsp").forward(request, response);//커뮤니티 메인페이지

			}else if(uri.equals("/boardMainView.board")) {//자유게시판 메인화면 출력(communityMain.jsp에서 자유게시판 메뉴 클릭 시 여기로.)
				int cpage = Integer.parseInt(request.getParameter("cpage"));
				request.setAttribute("cpage", cpage);
				String boardOption ="f";
				List<BoardDTO> list = dao.selectByPage(cpage,boardOption);
				List<BoardDTO> hotlist = dao.selectByLikeCount(boardOption);
				
				String pageNavi = dao.getPageNavi(cpage, boardOption);
				
				request.setAttribute("list", list);
				request.setAttribute("hotlist", hotlist);
				request.setAttribute("navi", pageNavi);
				
				//공지글 리스트
				List<BoardDTO> noticeList = dao.selectNotice(boardOption);
				request.setAttribute("noticeList", noticeList);
				
				///////애디터 추천 게시글///////
				String editor_type = boardOption;
				boardOption ="e";
				List<BoardDTO> editorList = dao.selectByEditorType(boardOption,editor_type);
				request.setAttribute("editorList", editorList);//애디터추천게시글 리스트
				List<FilesDTO> filesDao = filesDAO.selectSysName(boardOption);//애디터추천 게시글 프로필 - sys_name get(해당게시글seq와 sys_name담겨 있음).
				request.setAttribute("porfileList", filesDao);
				request.setAttribute("profilePath", "/files/");
				
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
				
				//공지글 리스트
				List<BoardDTO> noticeList = dao.selectNotice(boardOption);
				request.setAttribute("noticeList", noticeList);
				///////애디터 추천 게시글///////
				String editor_type = boardOption;
				boardOption ="e";
				List<BoardDTO> editorList = dao.selectByEditorType(boardOption,editor_type);
				request.setAttribute("editorList", editorList);//애디터추천게시글 리스트
				List<FilesDTO> filesDao = filesDAO.selectSysName(boardOption);//애디터추천 게시글 프로필 - sys_name get(해당게시글seq와 sys_name담겨 있음).
				request.setAttribute("porfileList", filesDao);
				request.setAttribute("profilePath", "/files/");
				
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
				
				//공지글 리스트
				List<BoardDTO> noticeList = dao.selectNotice(boardOption);
				request.setAttribute("noticeList", noticeList);
				///////애디터 추천 게시글///////
				String editor_type = boardOption;
				boardOption ="e";
				List<BoardDTO> editorList = dao.selectByEditorType(boardOption,editor_type);
				request.setAttribute("editorList", editorList);//애디터추천게시글 리스트
				List<FilesDTO> filesDao = filesDAO.selectSysName(boardOption);//애디터추천 게시글 프로필 - sys_name get(해당게시글seq와 sys_name담겨 있음).
				request.setAttribute("porfileList", filesDao);
				request.setAttribute("profilePath", "/files/");
				
				request.getRequestDispatcher("/board/foodMain.jsp").forward(request, response);//맛집 메인페이지
				
			}else if(uri.equals("/houseMain.board")) {//숙소리뷰 메인화면 출력
				int cpage = Integer.parseInt(request.getParameter("cpage"));
				request.setAttribute("cpage", cpage);
				String boardOption ="h";
				List<BoardDTO> list = dao.selectByPage(cpage,boardOption);
				List<BoardDTO> hotlist = dao.selectByLikeCount(boardOption);
				
				String pageNavi = dao.getPageNavi(cpage, boardOption);
				
				request.setAttribute("list", list);
				request.setAttribute("navi", pageNavi);
				
				//공지글 리스트
				List<BoardDTO> noticeList = dao.selectNotice(boardOption);
				request.setAttribute("noticeList", noticeList);
				///////숙소 화제 게시글///////
				request.setAttribute("hotlist", hotlist);
				List<FilesDTO> hFilesDao = filesDAO.selectSysName(boardOption);//숙소 게시글 프로필 - sys_name get(해당게시글seq와 sys_name담겨 있음).
				request.setAttribute("housePorfileList", hFilesDao);

				///////애디터 추천 게시글///////
				String editor_type = boardOption;
				boardOption ="e";
				List<BoardDTO> editorList = dao.selectByEditorType(boardOption,editor_type);
				request.setAttribute("editorList", editorList);//애디터추천게시글 리스트
				List<FilesDTO> filesDao = filesDAO.selectSysName(boardOption);//애디터추천 게시글 프로필 - sys_name get(해당게시글seq와 sys_name담겨 있음).
				request.setAttribute("porfileList", filesDao);
				request.setAttribute("profilePath", "/files/");
				
				request.getRequestDispatcher("/board/houseMain.jsp").forward(request, response);//숙소리뷰 메인페이지
				
			}else if(uri.equals("/editorReMain.board")) {//애디터 추천글 메인화면 출력
				
				String boardOption ="e";
				List<BoardDTO> list = dao.selectAll(boardOption);

				request.setAttribute("list", list);

				List<FilesDTO> filesDao = filesDAO.selectSysName(boardOption);//애디터추천 게시글 프로필 - sys_name get(해당게시글seq와 sys_name담겨 있음).
				request.setAttribute("porfileList", filesDao);
				request.setAttribute("profilePath", "/files/");
	
				request.getRequestDispatcher("/board/editorReMain.jsp").forward(request, response);//애디터추천 메인페이지
		
			}else if(uri.equals("/search.board")) {//게시글 검색
				int cpage = Integer.parseInt(request.getParameter("cpage"));//페이징네비 페이지 넘버
				String boardOption = request.getParameter("boardOption"); //게시판 옵션(f:자유게시판, g:여행후기, j:구인구직, r:맛집, h:숙소리뷰, e:애디터추천글)
				String serchOption = request.getParameter("serchOption"); //검색 옵션(id, title, contents)
				String contents = request.getParameter("contents"); //검색 내용
//				System.out.println(cpage);
//				System.out.println(boardOption);
//				System.out.println(serchOption);
//				System.out.println(contents);
				
				List<BoardDTO> list = dao.search(cpage, serchOption, contents, boardOption);//검색 결과 게시글 리스트				
				List<BoardDTO> hotlist = dao.selectByLikeCount(boardOption);//화제글
				String pageNavi = dao.getPageNavi(cpage, boardOption, serchOption, contents);//검색 전용 페이징네비
				
				request.setAttribute("cpage", cpage);
				request.setAttribute("list", list);
				request.setAttribute("hotlist", hotlist);
				request.setAttribute("navi", pageNavi);

				String absolutePath = "";
				if(boardOption.equals("f")) {//자유게시판 메인페이지
					absolutePath = "/board/boardMain.jsp";
					//공지글 리스트
					List<BoardDTO> noticeList = dao.selectNotice(boardOption);
					request.setAttribute("noticeList", noticeList);
					///////애디터 추천 게시글///////
					String editor_type = boardOption;
					boardOption ="e";
					List<BoardDTO> editorList = dao.selectByEditorType(boardOption,editor_type);
					request.setAttribute("editorList", editorList);//애디터추천게시글 리스트
					List<FilesDTO> filesDao = filesDAO.selectSysName(boardOption);//애디터추천 게시글 프로필 - sys_name get(해당게시글seq와 sys_name담겨 있음).
					request.setAttribute("porfileList", filesDao);
					request.setAttribute("profilePath", "/files/");
				}else if(boardOption.equals("g")) {//여행후기 메인페이지
					absolutePath = "/board/gallery.jsp";
					
					List<FilesDTO> filesDao = filesDAO.selectSysName(boardOption);//후기 게시글 프로필 - sys_name get(해당게시글seq와 sys_name담겨 있음).
					request.setAttribute("porfileList", filesDao);
					request.setAttribute("profilePath", "/files/");
				}else if(boardOption.equals("j")) {//구인구직 메인페이지
					absolutePath = "/board/jobMain.jsp";
					//공지글 리스트
					List<BoardDTO> noticeList = dao.selectNotice(boardOption);
					request.setAttribute("noticeList", noticeList);
					///////애디터 추천 게시글///////
					String editor_type = boardOption;
					boardOption ="e";
					List<BoardDTO> editorList = dao.selectByEditorType(boardOption,editor_type);
					request.setAttribute("editorList", editorList);//애디터추천게시글 리스트
					List<FilesDTO> filesDao = filesDAO.selectSysName(boardOption);//애디터추천 게시글 프로필 - sys_name get(해당게시글seq와 sys_name담겨 있음).
					request.setAttribute("porfileList", filesDao);
					request.setAttribute("profilePath", "/files/");
				}else if(boardOption.equals("r")) {//맛집 메인페이지
					absolutePath = "/board/foodMain.jsp";
					//공지글 리스트
					List<BoardDTO> noticeList = dao.selectNotice(boardOption);
					request.setAttribute("noticeList", noticeList);
					///////애디터 추천 게시글///////
					String editor_type = boardOption;
					boardOption ="e";
					List<BoardDTO> editorList = dao.selectByEditorType(boardOption,editor_type);
					request.setAttribute("editorList", editorList);//애디터추천게시글 리스트
					List<FilesDTO> filesDao = filesDAO.selectSysName(boardOption);//애디터추천 게시글 프로필 - sys_name get(해당게시글seq와 sys_name담겨 있음).
					request.setAttribute("porfileList", filesDao);
					request.setAttribute("profilePath", "/files/");
				}else if(boardOption.equals("h")) {//숙소리뷰 메인페이지
					absolutePath = "/board/houseMain.jsp";
					
					//공지글 리스트
					List<BoardDTO> noticeList = dao.selectNotice(boardOption);
					request.setAttribute("noticeList", noticeList);
					///////숙소 화제 게시글///////
					List<FilesDTO> hFilesDao = filesDAO.selectSysName(boardOption);//애디터추천 게시글 프로필 - sys_name get(해당게시글seq와 sys_name담겨 있음).
					request.setAttribute("housePorfileList", hFilesDao);
					
					///////애디터 추천 게시글///////
					String editor_type = boardOption;
					boardOption ="e";
					List<BoardDTO> editorList = dao.selectByEditorType(boardOption,editor_type);
					request.setAttribute("editorList", editorList);//애디터추천게시글 리스트
					List<FilesDTO> filesDao = filesDAO.selectSysName(boardOption);//애디터추천 게시글 프로필 - sys_name get(해당게시글seq와 sys_name담겨 있음).
					request.setAttribute("porfileList", filesDao);
					request.setAttribute("profilePath", "/files/");

				}
				
				request.getRequestDispatcher(absolutePath).forward(request, response);//메인페이지 전환
				
			}else if(uri.equals("/editorLoad.board")) {//애디터추천게시글 메인 로드 시 찜,좋아요 정보 긁어오기
				String table = request.getParameter("table");
				String id = request.getSession().getAttribute("loginID").toString();//로그인 id

				PrintWriter pw = response.getWriter();
				if(table.equals("jjim")) {
					List<JjimDTO> jjimDTO = jjimDao.selectEditorJjim(id);//애디터 추천 all게시글에 찜 했는지 정보
					pw.append(g.toJson(jjimDTO));
				}else if(table.equals("good")) {
					List<GoodDTO> goodDTO = goodDao.selectEditorGood(id);//애디터 추천 all게시글에 좋아요 했는지 정보
					pw.append(g.toJson(goodDTO));
				}
				
			}else if(uri.equals("/writeboard.board")) {//게시판 글 작성하기 폼 출력(boardMain.jsp에서 글 작성하기 버튼 클릭 시 여기로.)
				String boardOption = request.getParameter("boardOption");
				request.setAttribute("boardOption", boardOption);
				
				//관리자 계정 정보 get.
				List<MemberDTO> memberDTO = memberDao.adminImformation();
				request.setAttribute("memberDTO", memberDTO);
				
				request.getRequestDispatcher("/board/boardWrite.jsp").forward(request, response);
				
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
				String editor_type = multi.getParameter("editor_type");//에디터 게시글 분류(자유게시판:f,구인구직:s,숙소리뷰:h)
				System.out.println(editor_type);
				//게시글 저장 //
				dao.insert(new BoardDTO(seq, writer, title, contents, "", 0, 0, 0, editor_type, 0));

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

				String url = "";
				if(boardOption.equals("f")) {//자유게시판
					url = "/boardMainView.board?";
				}else if(boardOption.equals("g")) {//여행후기
					url = "/galleryMain.board?";
				}else if(boardOption.equals("j")) {//구인구직
					url = "/jobMain.board?";
				}else if(boardOption.equals("r")) {//맛집
					url = "/foodMain.board?";
				}else if(boardOption.equals("h")) {//숙소
					url = "/houseMain.board?";
				}else if(boardOption.equals("e")) {//애디터추천
					url = "/editorReMain.board?";
				}
				
				response.sendRedirect(url+"cpage=1");//해당 게시판 메인화면으로 전환
	
			}else if(uri.equals("/detailView.board")) {//작성글 출력(게시판 목록에서 게시글 클릭 시 여기로.)
				//테스트용 하드코딩
//				String seq = "f75";
				String seq = request.getParameter("seq"); //해당 게시글 고유seq
//			System.out.println("요기 : " + seq);	
				int cpage = Integer.parseInt(request.getParameter("cpage"));
				request.setAttribute("cpage", cpage);
				
				String click = request.getParameter("click");
				if(click.equals("ok")){
					dao.viewCountUp(seq);//조회수 증가
				}
				
				BoardDTO dto = dao.selectBySeq(seq);//고유seq에 해당하는 게시글 정보get
				request.setAttribute("dto", dto);
				
				if((String) request.getSession().getAttribute("loginID") != null) {
					String id = (String) request.getSession().getAttribute("loginID");//로그인 id
					request.setAttribute("isBoardJjim", jjimDao.isBoardJjim(seq, id));//해당 게시글에 찜 했는지 정보
					request.setAttribute("isBoardGood", goodDao.isBoardGood(seq, id));//해당 게시글에 좋아요 했는지 정보
				}

				
				int totalPage = replyDao.getTotalPage();//댓글 총 페이지 수
				request.setAttribute("totalPage", totalPage);
				
				//총댓글 수
				int reTotalCnt = replyDao.selectReTotalCnt(seq);
				request.setAttribute("reTotalCnt", reTotalCnt);
				//리댓글 수
				List<ReplyDTO> reList = replyDao.selectReCountByRe(seq);
				request.setAttribute("reList", reList);
				
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
				dao.modifyPost(new BoardDTO(seq, writer, title, contents, "", 0, 0, 0, null, 0));

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
				response.sendRedirect("/detailView.board?cpage=1&seq="+seq+"&click=no");//자유게시판 메인화면으로 전환
				
				
			}else if(uri.equals("/chat.board")) {//댓글 등록 시(작성 글에서 댓글 등록 클릭 시 여기로)
				
				String parent_seq = request.getParameter("parent_seq"); //해당 게시글 고유seq
				String id = (String) request.getSession().getAttribute("loginID");
				String contents = request.getParameter("chatContents");
				
				replyDao.insert(new ReplyDTO(null, id, contents, null, parent_seq, 0));

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
				
				
			}else if(uri.equals("/goIndex.board")) { //index페이지로 연결
				response.sendRedirect("/index.jsp");
				
			} else if(uri.equals("/goList.board")) {  //목록으로
				String seq = request.getParameter("seq");
//				System.out.println(seq);
				String menu = seq.substring(0,1);
//				System.out.println(menu);
				int cpage = Integer.parseInt(request.getParameter("cpage"));
				System.out.println(cpage);
				
				if(menu.equals("f")) {
					response.sendRedirect("/boardMainView.board?cpage="+cpage);
				}else if(menu.equals("g")) {
					response.sendRedirect("/galleryMain.board?cpage="+cpage);
				}else if(menu.equals("j")) {
					response.sendRedirect("/jobMain.board?cpage="+cpage);
				}else if(menu.equals("r")) {
					response.sendRedirect("/foodMain.board?cpage="+cpage);
				}else if(menu.equals("h")) {
					response.sendRedirect("/houseMain.board?cpage="+cpage);
				}else if(menu.equals("e")) {
					response.sendRedirect("/editorReMain.board?cpage=1");
//					String referer= request.getHeader("referer");
//					System.out.println(referer);
//					response.sendRedirect(referer);
				}
				
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

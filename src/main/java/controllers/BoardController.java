package controllers;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import dao.BoardDAO;
import dao.FilesDAO;
import dto.BoardDTO;
import dto.FilesDTO;

@WebServlet("*.board")
public class BoardController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");//한글 안깨지게
		request.setCharacterEncoding("UTF-8");// post 방식 한글 안깨지게

		BoardDAO dao = BoardDAO.getInstance();
		FilesDAO filesDAO = FilesDAO.getInstance();
		String uri = request.getRequestURI();

		try {
			if(uri.equals("/boardMainView.board")) {//자유게시판 메인화면 출력(communityMain.jsp에서 자유게시판 메뉴 클릭 시 여기로.)

				request.getRequestDispatcher("/board/boardMain.jsp").forward(request, response);//자유게시판 메인페이지

			}else if(uri.equals("/writeboard.board")) {//자유게시판 글 작성하기 폼 출력(boardMain.jsp에서 글 작성하기 버튼 클릭 시 여기로.)
				response.sendRedirect("/board/boardWrite.jsp");//자유게시판 글 작성 페이지 전환
				
			}else if(uri.equals("/writeProcessing.board")) {//게시글 작성완료 처리 과정(boardWrite.jsp에서 작성완료 버튼 클릭 시 여기로.)
				
				int maxSize = 1024*1024*10;//파일허용 크기
				String savePath = request.getServletContext().getRealPath("f_files");//자유게시판 업로드 파일 저장 경로	
//				System.out.println(savePath);
				File filePath = new File(savePath);
				if(!filePath.exists()) {
					filePath.mkdir();
				}
				MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, "UTF8", new DefaultFileRenamePolicy() );

				String writer = (String) request.getSession().getAttribute("loginID");//로그인 id
//				String writer = "test";//테스트 하드코딩 - 위에 주석 풀어서 쓸 것

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
				String seq = "f40";
//				String seq = request.getParameter("seq"); //해당 게시글 고유seq
				
//				int cpage = Integer.parseInt(request.getParameter("cpage"));
//				if(request.getHeader("referer").equals("http://localhost/list.board?cpage="+cpage)){//이전 주소가 이와 같다면, 조회 수 증가
//					dao.viewCountUp(seq);//조회수 증가
//				}

				BoardDTO dto = dao.selectBySeq(seq);//고유seq에 해당하는 게시글 정보get
				request.setAttribute("dto", dto);

//				List<ReplyDTO> replyList = replayDAO.selectAll();//댓글 정보 가져오기 All
//				request.setAttribute("replyList", replyList);
				
				request.getRequestDispatcher("/board/boardView.jsp").forward(request, response);//작성글 페이지 전환

			}else if(uri.equals("/delete.board")) {//게시글 삭제 시
				
				response.sendRedirect("/boardMainView.board?cpage=1");//자유게시판 메인화면으로 전환
			}else if(uri.equals("/modity.board")) {//게시글 수정 시
				
//				response.sendRedirect("/detailView.board?seq="+seq);//작성글 출력
			}else if(uri.equals("/chat.board")) {//댓글 등록 시(작성 글에서 댓글 등록 클릭 시 여기로)

//				response.sendRedirect("/detailView.board?seq="+parent_seq);//작성글 출력
			
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

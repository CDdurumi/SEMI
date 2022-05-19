package controllers;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import dao.FilesDAO;

@WebServlet("*.file")
public class FilesController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");//한글 안깨지게
		request.setCharacterEncoding("UTF-8");// post 방식 한글 안깨지게
		
		String uri = request.getRequestURI();

		FilesDAO dao = FilesDAO.getInstance();
		Gson g = new Gson();

		try {
			if(uri.equals("/f_list.file")) {//파일 목록
//				int parent_seq = Integer.parseInt(request.getParameter("parent_seq"));
//				PrintWriter pw = response.getWriter();
//				List<FilesDTO> list = dao.selectAll(parent_seq);
//				pw.append(g.toJson(list));
			}else if(uri.equals("/f_download.file")) {//파일 다운로드
//				String filePath = request.getServletContext().getRealPath("files");
//				String sys_name = request.getParameter("sys_name");
//				String ori_name = request.getParameter("ori_name");
//
//				File target = new File(filePath +"/"+ ori_name );
//				byte[] contents = new byte[(int) target.length()];
//
//				ori_name = new String(ori_name.getBytes("utf8"),"ISO-8859-1");		
//				response.reset();
//				response.setHeader("Content-Disposition", "attachment;filename=\""+ori_name+"\"");
//
//				try(DataInputStream dis = new DataInputStream(new FileInputStream(target));
//						ServletOutputStream sos = response.getOutputStream();){
//
//					dis.readFully(contents);
//					sos.write(contents);
//					sos.flush();
//				}

			}else if(uri.equals("/imageUpload.file")) {//이미지 업로드
				String fileName = ""; // 파일명
				
				int maxSize = 1024*1024*10;//파일허용 크기
				String savePath = request.getServletContext().getRealPath("f_dummy_images");//자유게시판 더미 이미지 저장 경로
//				System.out.println(savePath);
				File filePath = new File(savePath);
				if(!filePath.exists()) {
					filePath.mkdir();
				}
				try { // 파일업로드 및 업로드 후 파일명 가져옴
					MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, "UTF8", new DefaultFileRenamePolicy() );
					
					Enumeration files = multi.getFileNames();
					String file = (String)files.nextElement(); //name(파라미터 이름)
					fileName = multi.getFilesystemName(file); //서버에 저장된 시스템 파일이름

				}catch(Exception e) {
					e.printStackTrace();
				}

				PrintWriter pw = response.getWriter();
				// 업로드된 경로와 파일명을 통해 이미지의 경로를 생성
				String uploadPath = "/f_dummy_images/" + fileName;

			    // 생성된 경로를 JSON 형식으로 보내주기 위한 설정
				JsonObject jobj = new JsonObject();
				jobj.addProperty("url", uploadPath);
				pw.append(jobj.toString());
System.out.println(jobj.toString());


			}else if(uri.equals("/dummmyImageDel.file")) {//이미지 업로드
				
				String src = request.getParameter("src");			
				System.out.println(src);
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

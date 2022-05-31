package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import dto.BoardDTO;
import dto.MemberDTO;
import dto.MessageDTO;

public class MessageDAO {

	public MessageDAO() {

	}

	// 싱글톤
	private static MessageDAO instance = null;

	public synchronized static MessageDAO getInstance() {
		if (instance == null) {
			instance = new MessageDAO();
		}
		return instance;
	}

	// db연결
	private Connection getConnection() throws Exception {
		Context ctx = new InitialContext();
		DataSource ds = (DataSource) ctx.lookup("java:comp/env/jdbc/orcl");
		return ds.getConnection();
	}
	// 닉네임으로 이메일 검색
	public String searchEmail(String nick) throws Exception {

		String sql = "select * from member where id=?";
		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
			pstat.setString(1, nick);
			try (ResultSet rs = pstat.executeQuery()) {

				rs.next();
				String email = rs.getString("email");
				
				return email;
			}
		}
	}
	// 메세지 입력
	public int insert(MessageDTO dto) throws Exception {
		String sql = "insert into message values(message_seq.nextval,?,?,?,?,?,?,sysdate)";

		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql)) {
			pstat.setString(1, dto.getTitle());
			pstat.setString(2, dto.getSender());
			pstat.setString(3, dto.getReceiver());
			pstat.setString(4, dto.getSender_email());
			pstat.setString(5, dto.getReceiver_email());
			pstat.setString(6, dto.getContents());
			
			int result = pstat.executeUpdate();

			con.commit();
			return result;
		}
	}
	public MessageDTO selectBySeq(int seq) throws Exception{
		String sql = "select * from message where message_seq = ? ";
		
		try(Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);){
			pstat.setInt(1, seq);
			try(ResultSet rs = pstat.executeQuery();){
				rs.next();
				
//				MessageDTO dto = new MessageDTO();
//				dto.setMessage_seq(rs.getInt("message_seq"));
//				dto.setTitle(rs.getString("title"));
//				dto.setSender(rs.getString("sender"));
//				dto.setReceiver(rs.getString("receiver"));
//				dto.setContents(rs.getString("contents"));
//				dto.setDate(rs.getString("date"));
				
				int message_seq = rs.getInt("message_seq");
				String title = rs.getString("title");
				String sender = rs.getString("sender");
				String receiver = rs.getString("receiver");
				String sender_email = rs.getString("sender_email");
				String receiver_email = rs.getString("receiver_email");
				String contents = rs.getString("contents");
				Timestamp write_date = rs.getTimestamp("write_date");
				
				SimpleDateFormat sdf = new SimpleDateFormat("YY년 MM월 dd일 HH:mm");
				String date = sdf.format(write_date);
				
				MessageDTO dto = new MessageDTO(seq, title, sender, receiver, sender_email, receiver_email, contents, date);
				return dto;
			}
		}
	}
	// 메세지 삭제
	public int delete(int seq) throws Exception {
		String sql = "delete from message where message_seq=?";

		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql)) {

			pstat.setInt(1, seq);

			int result = pstat.executeUpdate();

			con.commit();
			return result;
		}
	}


	
	// Message에서 보여지는 게시글 개수를 정하기 위한 메소드
	public List<MessageDTO> selectBySendPage(int cpage, String email) throws Exception{

		// 게시글의 번호를 세팅한다.
		int start = (cpage-1) *20 +1;//해당 페이지의 첫 게시글 번호
		int end = cpage * 20;//해당 페이지의 끝 게시글 번호

		// 한 페이지에 게시글이 15개씩 보여지도록 하기 위해서 row_number를 활용하는데, 서브 쿼리를 활용해서 select 해준다.
		String sql = "select * from (select (row_number() over(order by write_date )) line, message.* from message where sender_email=? order by line desc) where (line between ? and ?) and (sender_email=?)";


		try(Connection con = this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql);){
			pstat.setString(1, email);
			pstat.setInt(2, start);
			pstat.setInt(3, end);
			pstat.setString(4, email);
			
			try(ResultSet rs = pstat.executeQuery();){
				List<MessageDTO> list = new ArrayList<MessageDTO>();

				while(rs.next()) {
					int line = rs.getInt("line");
					int seq = rs.getInt("message_seq");
					String title = rs.getString("title");
					String sender = rs.getString("sender");
					String receiver = rs.getString("receiver");
					String sender_email = rs.getString("sender_email");
					String receiver_email = rs.getString("receiver_email");
					String contents = rs.getString("contents");
					Timestamp write_date = rs.getTimestamp("write_date");
					
					SimpleDateFormat sdf = new SimpleDateFormat("YY년 MM월 dd일 HH:mm");
					String date = sdf.format(write_date);
					
					MessageDTO dto = new MessageDTO(line, seq, title, sender, receiver, sender_email, receiver_email, contents, date);
					list.add(dto);
				}
				return list;
			}
		}
	}
	public List<MessageDTO> selectByReceivePage(int cpage, String email) throws Exception{

		// 게시글의 번호를 세팅한다.
		int start = (cpage-1) *20 +1;//해당 페이지의 첫 게시글 번호 1 16 31 
		int end = cpage * 20;//해당 페이지의 끝 게시글 번호 15 30 45 

		// 한 페이지에 게시글이 15개씩 보여지도록 하기 위해서 row_number를 활용하는데, 서브 쿼리를 활용해서 select 해준다.
		String sql = "select * from (select (row_number() over(order by write_date )) line, message.* from message where receiver_email=? order by line desc) where (line between ? and ?) and (receiver_email=?) ";
		

		try(Connection con = this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql);){
			pstat.setString(1, email);
			pstat.setInt(2, start);
			pstat.setInt(3, end);
			pstat.setString(4, email);

			try(ResultSet rs = pstat.executeQuery();){
				List<MessageDTO> list = new ArrayList<MessageDTO>();
				
				while(rs.next()) {
					int line = rs.getInt("line");
					int seq = rs.getInt("message_seq");
					String title = rs.getString("title");
					String sender = rs.getString("sender");
					String receiver = rs.getString("receiver");
					String sender_email = rs.getString("sender_email");
					String receiver_email = rs.getString("receiver_email");
					String contents = rs.getString("contents");
					Timestamp write_date = rs.getTimestamp("write_date");
					
					SimpleDateFormat sdf = new SimpleDateFormat("YY년 MM월 dd일 HH:mm");
					String date = sdf.format(write_date);

					MessageDTO dto = new MessageDTO(line, seq, title, sender, receiver, sender_email, receiver_email, contents, date);
					
					
					list.add(dto);
				}
				return list;
			}
		}
	}
	public List<BoardDTO> selectByPageFree(int cpage,String boardOption, String nick) throws Exception {

		// 게시글의 번호를 세팅한다.
		int start = (cpage-1) * 20 +1;
		int end = cpage * 20;

		// 한 페이지에 게시글이 20개씩 보여지도록 하기 위해서 row_number를 활용하는데, 서브 쿼리를 활용해서 select 해준다.
		String sql = "select * from (select row_number() over(order by write_date ) line, all_board.* from all_board where all_board_seq like '"+boardOption+"%' and editor_type != 'n' and (id=?) order by line desc) where (line between ? and ?)";
						
		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
			pstat.setString(1, nick);
			pstat.setInt(2, start);
			pstat.setInt(3, end);
			

			try (ResultSet rs = pstat.executeQuery();) {
				List<BoardDTO> list = new ArrayList<BoardDTO>();

				while (rs.next()) {
					String seq = rs.getString("all_board_seq");
					String id = rs.getString("id");
					String title = rs.getString("title");
					String contents = rs.getString("contents");
					Timestamp write_date = rs.getTimestamp("write_date");
					int like_count = rs.getInt("jjim_count");
					int jjim_count = rs.getInt("like_count");
					int view_count = rs.getInt("view_count");
					String editor_type = rs.getString("editor_type");
					int line = rs.getInt("line");
					
					SimpleDateFormat sdf = new SimpleDateFormat("YY년 MM월 dd일 HH:mm");
					String date = sdf.format(write_date);

					BoardDTO dto = new BoardDTO(seq, id, title, contents, date, jjim_count, like_count,
							view_count, editor_type, line);
					list.add(dto);
				}
				return list;
			}
		}
	}
	public List<BoardDTO> selectByJjimPage(int cpage, String nick) throws Exception{

		// 게시글의 번호를 세팅한다.
		int start = (cpage-1) *20 +1;//해당 페이지의 첫 게시글 번호 1 16 31 
		int end = cpage * 20;//해당 페이지의 끝 게시글 번호 15 30 45 

		// 한 페이지에 게시글이 15개씩 보여지도록 하기 위해서 row_number를 활용하는데, 서브 쿼리를 활용해서 select 해준다.
		String sql = "select * from (select row_number() over(order by B.jjimm_date ) line, A.*, B.*\r\n"
				+ "from all_board A join jjim B on (A.all_board_seq = B.board_seq) \r\n"
				+ "where (B.jjim_id = ?) \r\n"
				+ "order by line desc) where line between ? and ?";
		

		try(Connection con = this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql);){
			pstat.setString(1, nick);
			pstat.setInt(2, start);
			pstat.setInt(3, end);
			

			try(ResultSet rs = pstat.executeQuery();){
				List<BoardDTO> list = new ArrayList<BoardDTO>();
				
				while(rs.next()) {
					int line = rs.getInt("line");
					String all_seq = rs.getString("all_board_seq");
					String id = rs.getString("id");
					String title = rs.getString("title");
					String contents = rs.getString("contents");
					Timestamp write_date = rs.getTimestamp("write_date");
					int like_count = rs.getInt("like_count");
					int jjim_count = rs.getInt("jjim_count");
					int view_count = rs.getInt("view_count");
					String editor_type = rs.getString("editor_type");
					String board_seq = rs.getString("board_seq");
					String jjim_id = rs.getString("jjim_id");
					Timestamp jjimm_date = rs.getTimestamp("jjimm_date");
					
					SimpleDateFormat sdf = new SimpleDateFormat("YY년 MM월 dd일 HH:mm");
					String date = sdf.format(write_date);
					String j_date = sdf.format(write_date);

					BoardDTO dto = new BoardDTO(line, all_seq, id, title, contents, date, like_count, jjim_count, view_count, editor_type, board_seq, j_date, jjim_id);
					
					
					list.add(dto);
				}
				return list;
			}
		}
	}
	
	
}
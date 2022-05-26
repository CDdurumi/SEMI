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

	// 메세지 입력
	public int insert(MessageDTO dto) throws Exception {
		String sql = "insert into message value(message_seq.nextval,?,?,?,?,sysdate)";

		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql)) {
			pstat.setString(1, dto.getTitle());
			pstat.setString(2, dto.getSender());
			pstat.setString(3, dto.getReceiver());
			pstat.setString(4, dto.getContents());

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
				String contents = rs.getString("contents");
				Timestamp write_date = rs.getTimestamp("write_date");
				
				SimpleDateFormat sdf = new SimpleDateFormat("YY년 MM월 dd일 HH:mm");
				String date = sdf.format(write_date);
				
				MessageDTO dto = new MessageDTO(seq, title, sender, receiver, contents, date);
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
	public List<MessageDTO> selectBySendPage(int cpage, String id) throws Exception{

		// 게시글의 번호를 세팅한다.
		int start = (cpage-1) *15 +1;//해당 페이지의 첫 게시글 번호
		int end = cpage * 15;//해당 페이지의 끝 게시글 번호

		// 한 페이지에 게시글이 15개씩 보여지도록 하기 위해서 row_number를 활용하는데, 서브 쿼리를 활용해서 select 해준다.
		String sql = "select * from (select row_number() over(order by write_date desc) line, message.* from message where sender=?) where (line between ? and ?) and (sender=?)";

		try(Connection con = this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql);){
			pstat.setString(1, id);
			pstat.setInt(2, start);
			pstat.setInt(3, end);
			pstat.setString(4, id);
			
			try(ResultSet rs = pstat.executeQuery();){
				List<MessageDTO> list = new ArrayList<MessageDTO>();

				while(rs.next()) {
					int line = rs.getInt("line");
					int seq = rs.getInt("message_seq");
					String title = rs.getString("title");
					String sender = rs.getString("sender");
					String receiver = rs.getString("receiver");
					String contents = rs.getString("contents");
					Timestamp write_date = rs.getTimestamp("write_date");
					
					SimpleDateFormat sdf = new SimpleDateFormat("YY년 MM월 dd일 HH:mm");
					String date = sdf.format(write_date);
					
					MessageDTO dto = new MessageDTO(line, seq, title, sender, receiver, contents, date);
					list.add(dto);
				}
				return list;
			}
		}
	}
	public List<MessageDTO> selectByReceivePage(int cpage, String id) throws Exception{

		// 게시글의 번호를 세팅한다.
		int start = (cpage-1) *15 +1;//해당 페이지의 첫 게시글 번호 1 16 31 
		int end = cpage * 15;//해당 페이지의 끝 게시글 번호 15 30 45 

		// 한 페이지에 게시글이 15개씩 보여지도록 하기 위해서 row_number를 활용하는데, 서브 쿼리를 활용해서 select 해준다.
		String sql = "select * from (select row_number() over(order by write_date desc) line, message.* from message where receiver=?) where (line between ? and ?) and (receiver=?)";

		try(Connection con = this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql);){
			pstat.setString(1, id);
			pstat.setInt(2, start);
			pstat.setInt(3, end);
			pstat.setString(4, id);

			try(ResultSet rs = pstat.executeQuery();){
				List<MessageDTO> list = new ArrayList<MessageDTO>();
				
				while(rs.next()) {
					int line = rs.getInt("line");
					int seq = rs.getInt("message_seq");
					String title = rs.getString("title");
					String sender = rs.getString("sender");
					String receiver = rs.getString("receiver");
					String contents = rs.getString("contents");
					Timestamp write_date = rs.getTimestamp("write_date");
					
					SimpleDateFormat sdf = new SimpleDateFormat("YY년 MM월 dd일 HH:mm");
					String date = sdf.format(write_date);

					MessageDTO dto = new MessageDTO(line, seq, title, sender, receiver, contents, date);
					
					
					list.add(dto);
				}
				return list;
			}
		}
	}
	
	
	
	
}
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import dto.ReplyDTO;

public class ReplyDAO {
	//싱글턴
	private static ReplyDAO instance = null;
	public synchronized static ReplyDAO getInstance() {
		if(instance == null) {
			instance = new ReplyDAO();
		}
		return instance;	
	}
	//d.b연결
	private Connection getConnection() throws Exception {
		Context ctx = new InitialContext();
		DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/orcl");
		return ds.getConnection();
	}
	
	
	//댓글 삽입
	public int insert(ReplyDTO dto) throws Exception {

		String sql = "insert into reply values('r'||reply_seq.nextval, ?, ?, sysdate, ?)";
		try(Connection con = this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql);) {

			pstat.setString(1, dto.getId());
			pstat.setString(2, dto.getContents());
			pstat.setString(3, dto.getParnet_seq());

			int result = pstat.executeUpdate();
			con.commit();
			return result;
		}
	}
	
	//조회(ALL)
	public List<ReplyDTO> selectAll() throws Exception {
		String sql = "select * from reply order by write_date desc";
		try(Connection con = this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql);) {

			List<ReplyDTO> list = new ArrayList<>();
			try(ResultSet rs = pstat.executeQuery()){
				while(rs.next()) {
					String reply_seq = rs.getString("reply_seq");
					String id = rs.getString("id");
					String contents = rs.getString("contents");
					Timestamp write_date = rs.getTimestamp("write_date");
					String parent_seq = rs.getString("parent_seq");

					list.add(new ReplyDTO(reply_seq, id, contents, write_date, parent_seq));
				}
				return list;
			}
		}
	}
	
	//댓글 삭제
	public int deleteByReplySeq(String reply_seq) throws Exception {

		String sql = "delete from reply where reply_seq=?";
		try(Connection con = this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql);) {
			pstat.setString(1, reply_seq);
			int result = pstat.executeUpdate();
			con.commit();
			return result;
		}
	}
	
	//댓글 내용 수정
	public int modify(String reply_seq, String contents)  throws Exception {      
		String sql = "update reply set contents = ?, write_date = sysdate where reply_seq =? ";
		try (Connection con = this.getConnection(); 
				PreparedStatement pstat = con.prepareStatement(sql);) {         	         
			pstat.setString(1,contents);
			pstat.setString(2,reply_seq);

			int result = pstat.executeUpdate();
			con.commit();

			return result;
		}
	}
}

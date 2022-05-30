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

import dto.BoardDTO;
import dto.ReplyDTO;
import dto.ReplyReDTO;
import dto.ReplyReDTO;

public class ReplyReDAO {
	//싱글턴
	private static ReplyReDAO instance = null;
	public synchronized static ReplyReDAO getInstance() {
		if(instance == null) {
			instance = new ReplyReDAO();
		}
		return instance;	
	}
	//d.b연결
	private Connection getConnection() throws Exception {
		Context ctx = new InitialContext();
		DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/orcl");
		return ds.getConnection();
	}
	
	//re댓글 삽입
	public int insert(ReplyReDTO dto) throws Exception {

		String sql = "insert into reply_re values('rr'||reply_re_seq.nextval, ?, ?, sysdate, ?)";
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
	
	//re댓글 All조회(부모 댓글에 대한)
	public List<ReplyReDTO> selectByParentSeq(String pparent_seq) throws Exception {
		String sql = "select * from reply_re where parent_seq = ? order by write_date desc";
		try(Connection con = this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql);) {
			pstat.setString(1, pparent_seq);
			List<ReplyReDTO> list = new ArrayList<>();
			
			try(ResultSet rs = pstat.executeQuery()){
				while(rs.next()) {
					String reply_re_seq = rs.getString("reply_re_seq");
					String id = rs.getString("id");
					String contents = rs.getString("contents");
					Timestamp write_date = rs.getTimestamp("write_date");
					String parent_seq = rs.getString("parent_seq");

					list.add(new ReplyReDTO(reply_re_seq, id, contents, write_date, parent_seq));
				}
				return list;
			}
		}
	}
	
	//re댓글 삭제
	public int deleteByReplySeq(String reply_re_seq) throws Exception {

		String sql = "delete from reply_re where reply_re_seq=?";
		try(Connection con = this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql);) {
			pstat.setString(1, reply_re_seq);
			int result = pstat.executeUpdate();
			con.commit();
			return result;
		}
	}
	
	//re댓글 내용 수정
	public int modify(String reply_re_seq, String contents)  throws Exception {      
		String sql = "update reply_re set contents = ?, write_date = sysdate where reply_re_seq =? ";
		try (Connection con = this.getConnection(); 
				PreparedStatement pstat = con.prepareStatement(sql);) {         	         
			pstat.setString(1,contents);
			pstat.setString(2,reply_re_seq);

			int result = pstat.executeUpdate();
			con.commit();

			return result;
		}
	}
	
	//re댓글 정보 가져오기
	public ReplyReDTO reReplyinfo(String seq) throws Exception{
		String sql = "select * from reply_re where reply_re_seq =?";
		try(Connection con = this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql);){
			pstat.setString(1, seq);
			try(ResultSet rs = pstat.executeQuery();){
				rs.next();
				String reply_re_seq = rs.getString("reply_re_seq");
				String id = rs.getString("id");
				String contents = rs.getString("contents");
				Timestamp write_date = rs.getTimestamp("write_date");
				String parent_seq = rs.getString("parent_seq");
				return  new ReplyReDTO(reply_re_seq, id, contents, write_date, parent_seq);
			}
		}
	}
	
	
}

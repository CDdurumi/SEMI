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

					list.add(new ReplyDTO(reply_seq, id, contents, write_date, parent_seq ,0));
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
	
	
	//댓글 페이지 수(한 페이지 당 10개 댓글)
	public int getTotalPage() throws Exception {
		String sql = "select count(*) from reply ";
		try(Connection con = this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql);
				ResultSet rs = pstat.executeQuery();) {
			rs.next();
			
			int recordTotalCount =  rs.getInt(1);//총 댓글 수
			int recordCountRerPage = 10;//한 페이당 몇 개의 댓글을 보여줄건가
			
			int pageTotalCount = 0; //총 페이지 수
			if(recordTotalCount % recordCountRerPage >0) { //나머지가 있으면 전체 페이지 + 1
				pageTotalCount = recordTotalCount/recordCountRerPage +1 ; 
			}else {
				pageTotalCount = recordTotalCount/recordCountRerPage;
			}
			
			return pageTotalCount;
			
		}
	}
	
	//해당 페이지의 댓글 가져오기
	public List<ReplyDTO> selectByPage(int cpage, String pparent_seq) throws Exception{
		int start = (cpage-1) *10 +1;//해당 페이지의 첫 게시글 번호
		int end = cpage * 10;//해당 페이지의 끝 게시글 번호

		String sql = "select *from( select row_number() over(order by write_date desc ) line, reply.* "
									+ "from reply "
									+ "where parent_seq = ? ) "
				+ "where line between ? and ?";
		
		try(Connection con = this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql);) {
			pstat.setString(1, pparent_seq);
			pstat.setInt(2, start);
			pstat.setInt(3, end);
			
			List<ReplyDTO> list = new ArrayList<>();
			try(ResultSet rs = pstat.executeQuery()){
				while(rs.next()) {
					String reply_seq = rs.getString("reply_seq");
					String id = rs.getString("id");
					String contents = rs.getString("contents");
					Timestamp write_date = rs.getTimestamp("write_date");
					String parent_seq = rs.getString("parent_seq");

					list.add(new ReplyDTO(reply_seq, id, contents, write_date, parent_seq, 0));
				}
				return list;
			}
		}
	}
	
//	select B.reply_seq, count(*) from reply_re A join reply B on (A.parent_seq = B.reply_seq) where B.parent_seq = 'f2' group by B.reply_seq;
	//re댓글 수(부모 댓글에 대한)
	public List<ReplyDTO> selectReCountByRe(String sseq) throws Exception {//seq : 해당 게시글 넘버
		String sql = "select B.reply_seq, count(A.parent_seq) cnt "
				+ "from reply_re A right join reply B on (A.parent_seq = B.reply_seq) "
				+ "where B.parent_seq = '"+sseq+"' group by B.reply_seq";
		try(Connection con = this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql);) {
			
			List<ReplyDTO> list = new ArrayList<>();
			
			try(ResultSet rs = pstat.executeQuery()){
				while(rs.next()) {
					String reply_seq = rs.getString("reply_seq");
					int reReCount = rs.getInt("cnt");

					list.add(new ReplyDTO(reply_seq, null, null, null, null, reReCount));
				}
				return list;
			}
		}
	}
	
	
	public int selectReTotalCnt(String sseq) throws Exception {//seq : 해당 게시글 넘버
		String sql = "select count(*) from reply where parent_seq = ? ";
		try(Connection con = this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql);) {
			
			pstat.setString(1, sseq);
			
			try(ResultSet rs = pstat.executeQuery()){
				
				rs.next();
				return rs.getInt(1);
			}
		}
	}
	public ReplyDTO replyinfo(String seq) throws Exception{
		String sql = "select * from reply where reply_seq =?";
		try(Connection con = this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql);){
			pstat.setString(1, seq);
			try(ResultSet rs = pstat.executeQuery();){
				rs.next();
				String reply_seq = rs.getString("reply_seq");
				String id = rs.getString("id");
				String contents = rs.getString("contents");
				Timestamp write_date = rs.getTimestamp("write_date");
				String parent_seq = rs.getString("parent_seq");
				return  new ReplyDTO(reply_seq, id, contents, write_date, parent_seq, 0);
			}
		}
	}

}

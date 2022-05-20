package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import dto.BoardDTO;

public class BoardDAO {

	//싱글턴
	private static BoardDAO instance = null;
	public synchronized static BoardDAO getInstance() {
		if(instance == null) {
			instance = new BoardDAO();
		}
		return instance;	
	}
	//d.b연결
	private Connection getConnection() throws Exception {
		Context ctx = new InitialContext();
		DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/orcl");
		return ds.getConnection();
	}
	
	//NEXT SEQ 가져오기(해당 작성글 seq)
	public String getSeqNextVal(String boardOption) throws Exception{
		String boardSeq = "";
		if(boardOption.equals("f")) {//자유게시판
			boardSeq = "free_board_seq";
		}else if(boardOption.equals("g")) {//여행후기
			boardSeq = "gallery_board_seq ";
		}else if(boardOption.equals("j")) {//구인구직
			boardSeq = "job_board_seq";
		}else if(boardOption.equals("r")) {//맛집
			boardSeq = "restaurant_board_seq";
		}else if(boardOption.equals("h")) {//숙소리뷰
			boardSeq = "house_board_seq";
		}else if(boardOption.equals("e")) {//숙소리뷰
			boardSeq = "editor_board_seq ";
		}
		
		String sql = "select '"+boardOption+"'||"+boardSeq+".nextval from dual ";
		try(Connection con = this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql);
				ResultSet rs = pstat.executeQuery();) {
				rs.next();
				return rs.getString(1);
		}	
	}
	
	//삽입
	public int insert(BoardDTO dto) throws Exception {

		String sql = "insert into all_board values(?, ?, ?, ?, default, default, default)";
		try(Connection con = this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql);) {
			pstat.setString(1, dto.getFree_board_seq());
			pstat.setString(2, dto.getId());
			pstat.setString(3, dto.getTitle());
			pstat.setString(4, dto.getContents());

			int result = pstat.executeUpdate();
			con.commit();
			return result;
		}
	}


	
	
	
	
	
	
	
}

package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class GoodDAO {
	//싱글턴
	private static GoodDAO instance = null;
	public synchronized static GoodDAO getInstance() {
		if(instance == null) {
			instance = new GoodDAO();
		}
		return instance;	
	}
	//d.b연결
	private Connection getConnection() throws Exception {
		Context ctx = new InitialContext();
		DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/orcl");
		return ds.getConnection();
	}
	
	
	//좋아요 게시글 정보 추가
	public int insertgood(String seq, String id) throws Exception {

		String sql = "insert into good values(?, ?, default)";
		try(Connection con = this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql);) {
			pstat.setString(1, seq);
			pstat.setString(2, id);
			int result = pstat.executeUpdate();
			con.commit();
			return result;
		}
	}

	//좋아요 게시글 정보 삭제
	public int deletegood(String seq, String id) throws Exception {

		String sql = "delete from good where board_seq = ? and good_id = ?";
		try(Connection con = this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql);) {
			pstat.setString(1, seq);
			pstat.setString(2, id);
			int result = pstat.executeUpdate();
			con.commit();
			return result;

		}
	}
	

	// 해당 게시글 좋아요 상태인지 확인
	public boolean isBoardGood(String seq, String id) throws Exception {

		String sql = "select * from good where board_seq = ?  and good_id = ?";
		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql)) {
			pstat.setString(1, seq);
			pstat.setString(2, id);

			try (ResultSet rs = pstat.executeQuery();) {
				return rs.next();
			}
		}
	}
}

package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class JjimDAO {
	//싱글턴
	private static JjimDAO instance = null;
	public synchronized static JjimDAO getInstance() {
		if(instance == null) {
			instance = new JjimDAO();
		}
		return instance;	
	}
	//d.b연결
	private Connection getConnection() throws Exception {
		Context ctx = new InitialContext();
		DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/orcl");
		return ds.getConnection();
	}
	
	
	//찜 추가
	public int insertJjim(String seq, String id) throws Exception {

		String sql = "insert into jjim values(?, ?, default)";
		try(Connection con = this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql);) {
			pstat.setString(1, seq);
			pstat.setString(2, id);
			int result = pstat.executeUpdate();
			con.commit();
			return result;
		}
	}

	//찜 삭제
	public int deleteJjim(String seq, String id) throws Exception {

		String sql = "delete from jjim where board_seq = ? and jjim_id = ?";
		try(Connection con = this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql);) {
			pstat.setString(1, seq);
			pstat.setString(2, id);
			int result = pstat.executeUpdate();
			con.commit();
			return result;

		}
	}
}

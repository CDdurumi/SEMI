package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import dto.FreeBoardDTO;

public class FreeBoardDAO {

	//싱글턴
	private static FreeBoardDAO instance = null;
	public synchronized static FreeBoardDAO getInstance() {
		if(instance == null) {
			instance = new FreeBoardDAO();
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
	public String getSeqNextVal() throws Exception{

		String sql = "select 'f'||free_board_seq.nextval from dual ";
		try(Connection con = this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql);
				ResultSet rs = pstat.executeQuery();) {
				rs.next();
				return rs.getString(1);
		}	
	}
	
	//삽입
	public int insert(FreeBoardDTO dto) throws Exception {

		String sql = "insert into free_board values(?, ?, ?, ?, default, default, default)";
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

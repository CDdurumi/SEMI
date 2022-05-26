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

import dto.JjimDTO;

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
	
	
	// 해당 게시글 찜한 상태인지 확인
	public boolean isBoardJjim(String seq, String id) throws Exception {

		String sql = "select * from jjim where board_seq = ?  and jjim_id = ?";
		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql)) {
			pstat.setString(1, seq);
			pstat.setString(2, id);

			try (ResultSet rs = pstat.executeQuery();) {
				return rs.next();
			}
		}
	}
	
	// 애디터추천 All게시글 로그인id가 찜한 정보
	public List<JjimDTO> selectEditorJjim(String id) throws Exception {

		String sql = "select * from jjim where jjim_id = ? and board_seq like 'e%'";
		try (Connection con = this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql);) {
			
			pstat.setString(1, id);
			List<JjimDTO> list = new ArrayList<JjimDTO>();
			
			try(ResultSet rs = pstat.executeQuery();){
				while (rs.next()) {
					String board_seq = rs.getString("board_seq");
					String jjim_id = rs.getString("jjim_id");
					Timestamp jjim_date = rs.getTimestamp("jjimm_date");

					JjimDTO dto = new JjimDTO(board_seq, jjim_id, jjim_date);
					list.add(dto);
				}
				return list;
			}
		}
	}



}

package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import dto.FilesDTO;

public class FilesDAO {

	//싱글턴
	private static FilesDAO instance = null;
	public synchronized static FilesDAO getInstance() {
		if(instance == null) {
			instance = new FilesDAO();//같은 클래스니까 생성자가 private라도 사용 가능.
		}
		return instance;
	}

	private Connection getConnection() throws Exception{
		Context ctx = new InitialContext();
		DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/orcl");
		return ds.getConnection();
	}
	
	//삽입
	public int insert(FilesDTO dto) throws Exception {
		String sql = "insert into files values(files_seq.nextval, ?, ?, ?)";
		try(Connection con = this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql);) {
			pstat.setString(1, dto.getOri_name());
			pstat.setString(2, dto.getSys_name());
			pstat.setString(3, dto.getParent_seq());

			int result = pstat.executeUpdate();
			con.commit();
			return result;
		}
	}

	//파일 목록 리스트
	public List<FilesDTO> selectByParentSeq(String pparent_seq) throws Exception {

		String sql = "select * from files where parent_seq=? order by 1 desc ";
		try(Connection con = this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql);) {
			pstat.setString(1, pparent_seq);
			List<FilesDTO> list = new ArrayList<>();

			try(ResultSet rs = pstat.executeQuery()){
				while(rs.next()) {
					int seq = rs.getInt("seq");
					String ori_name = rs.getString("ori_name");
					String sys_name = rs.getString("sys_name");
					String parent_seq = rs.getString("parent_seq");
					list.add(new FilesDTO(seq, ori_name, sys_name,parent_seq));
				}
				return list;
			}
		}
	}


}

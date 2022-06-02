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

import dto.BoardDTO;
import dto.MemberDTO;

public class MemberDAO {
	public MemberDAO() {

	}
	
	private static MemberDAO instance = null;
	
	public synchronized static MemberDAO getInstance(){
		if(instance == null) {
			instance = new MemberDAO();
		}
		return instance;
	}

	private Connection getConnection() throws Exception {

		Context ctx = new InitialContext();
		DataSource ds = (DataSource) ctx.lookup("java:comp/env/jdbc/orcl");
		return ds.getConnection();
	}

	public int insert(MemberDTO dto) throws Exception {

		String sql = "insert into member values(?,?,?,default,?,default)";
		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {

			pstat.setString(1, dto.getId());
			pstat.setString(2, dto.getPw());
			pstat.setString(3, dto.getEmail());
			pstat.setString(4, dto.getInformation());

			int result = pstat.executeUpdate();
			con.commit();

			return result;

		}
	}

	// ID 중복검사
	public boolean isNickNameExist(String id) throws Exception {

		String sql = "select * from member where id=?";
		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
			pstat.setString(1, id);

			try (ResultSet rs = pstat.executeQuery()) {
				return rs.next();
			}
		}
	}

	// email 중복검사
	public boolean isEmailExist(String email) throws Exception {

		String sql = "select * from member where email=?";
		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
			pstat.setString(1, email);

			try (ResultSet rs = pstat.executeQuery()) {
				return rs.next();
			}
		}
	}
	

	//회원탈퇴
	public int memberOut(String email) throws Exception {

		String sql = "delete from member where email = ? ";
		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
			pstat.setString(1, email);

			int result = pstat.executeUpdate();
			con.commit();
			return result;
		}
	}
	

	// 로그인시 id PW 검사
	public boolean isEmailPwExist(String email, String pw) throws Exception {

		String sql = "select * from member where email = ? and pw =?";
		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
			pstat.setString(1, email);
			pstat.setString(2, pw);
			try (ResultSet rs = pstat.executeQuery()) {
				return rs.next();
			}
		}
	}

	// 사용자 정보 뽑기(이메일)

	public MemberDTO searchUser(String email) throws Exception {

		String sql = "select * from member where email =?";
		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
			pstat.setString(1, email);
			try (ResultSet rs = pstat.executeQuery()) {

				rs.next();
				String id = rs.getString("id");
				email = rs.getString("email");
				Timestamp join_date = rs.getTimestamp("join_date");
				String information = rs.getString("information");
				String isadmin = rs.getString("isadmin");
				
				SimpleDateFormat sdf = new SimpleDateFormat("YY년 MM월 dd일 HH:mm");
				String date = sdf.format(join_date);
				
				return (new MemberDTO(id, null, email, join_date, information, date, isadmin));

			}
		}
	}
	// 사용자 정보 뽑기(닉네임)
	public List<MemberDTO> searchUserId(String id, String sDate, String eDate) throws Exception {
		String sql = "select * from member where id like '%'||?||'%' and substr(JOIN_DATE,1,8) between TO_DATE('"+sDate+"', 'YY/MM/DD') and TO_DATE('"+eDate+"', 'YY/MM/DD')";
		if(sDate.equals("") || eDate.equals("")) {
			sql = "select * from member where id like '%'||?||'%'";
		}
		
		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
			pstat.setString(1, id);
			
			try (ResultSet rs = pstat.executeQuery()) {
				List<MemberDTO> list = new ArrayList<MemberDTO>();
				
				while(rs.next()) {
				id = rs.getString("id");
				String email = rs.getString("email");
				Timestamp join_date = rs.getTimestamp("join_date");
				String information = rs.getString("information");
				String isadmin = rs.getString("isadmin");
				
				SimpleDateFormat sdf = new SimpleDateFormat("YY년 MM월 dd일 HH:mm");
				String date = sdf.format(join_date);
				MemberDTO dto = new MemberDTO(id, null, email, join_date, information, date, isadmin);
				
				list.add(dto);
				}
				return list;
			}
		}
	}
	public List<MemberDTO> searchUserEmail(String email, String sDate, String eDate) throws Exception {
		String sql = "select * from member where email like '%'||?||'%' and substr(JOIN_DATE,1,8) between TO_DATE('"+sDate+"', 'YY/MM/DD') and TO_DATE('"+eDate+"', 'YY/MM/DD')";
		if(sDate.equals("") || eDate.equals("")) {
			sql = "select * from member where email like '%'||?||'%'";
		}
		
		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
			pstat.setString(1, email);
			try (ResultSet rs = pstat.executeQuery()) {
				List<MemberDTO> list = new ArrayList<MemberDTO>();
				
				while(rs.next()) {
				String id = rs.getString("id");
				email = rs.getString("email");
				Timestamp join_date = rs.getTimestamp("join_date");
				String information = rs.getString("information");
				String isadmin = rs.getString("isadmin");
				
				SimpleDateFormat sdf = new SimpleDateFormat("YY년 MM월 dd일 HH:mm");
				String date = sdf.format(join_date);
				
				MemberDTO dto = new MemberDTO(id, null, email, join_date, information, date, isadmin);
				
				list.add(dto);
				}
				return list;
			}
		}
	}
	public boolean isModifiedPossible(String id, String pw) throws Exception {
		String sql = "select * from member where id = ? and pw = ?";
		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
			pstat.setString(1, id);
			pstat.setString(2, pw);
			try (ResultSet rs = pstat.executeQuery()) {

				return rs.next();
			}

		}
	}
	
	public int modifiedUser(String id, String pw, String email) throws Exception {
		String sql = "update member set id = ?, pw = ? where email = ?";
		try(Connection con = this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql);){
			pstat.setString(1, id);
			pstat.setString(2, pw);
			pstat.setString(3, email);
			
			int result = pstat.executeUpdate();
			con.commit();
			return result;
		}
	}
	
	//관리자 계정 정보
	public List<MemberDTO> adminImformation() throws Exception {
		String sql = "select * from member where isadmin = 'Y'";

		try (Connection con = this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql);
				ResultSet rs = pstat.executeQuery();) {
			List<MemberDTO> list = new ArrayList<MemberDTO>();

			while (rs.next()) {
				String id = rs.getString("id");
				String email = rs.getString("email");
				Timestamp join_date = rs.getTimestamp("join_date");
				String information = rs.getString("information");
				String isadmin = rs.getString("isadmin");

				MemberDTO dto = new MemberDTO(id, null, email, join_date, information,isadmin);
				list.add(dto);
				
			}
			return list;
		}
	}
	public List<MemberDTO> selectByMemberPage(int cpage) throws Exception{

		// 게시글의 번호를 세팅한다.
		int start = (cpage-1) *20 +1;//해당 페이지의 첫 게시글 번호 1 16 31 
		int end = cpage * 20;//해당 페이지의 끝 게시글 번호 15 30 45 

		// 한 페이지에 게시글이 15개씩 보여지도록 하기 위해서 row_number를 활용하는데, 서브 쿼리를 활용해서 select 해준다.
		String sql = "select * from (select (row_number() over(order by join_date )) line, member.* from member order by line desc) where (line between ? and ?)";
		

		try(Connection con = this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql);){
			pstat.setInt(1, start);
			pstat.setInt(2, end);
			

			try(ResultSet rs = pstat.executeQuery();){
				List<MemberDTO> list = new ArrayList<MemberDTO>();
				
				while(rs.next()) {
					String nick = rs.getString("id");
					String email = rs.getString("email");
					Timestamp join_date = rs.getTimestamp("join_date");
					
					SimpleDateFormat sdf = new SimpleDateFormat("YY년 MM월 dd일 HH:mm");
					String date = sdf.format(join_date);

					MemberDTO dto = new MemberDTO(nick, null, email, null, date, null, null);
					
					
					list.add(dto);
				}
				return list;
			}
		}
	}
}

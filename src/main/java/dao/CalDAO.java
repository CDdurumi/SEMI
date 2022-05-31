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

import dto.CalDTO;
import dto.MemberDTO;

public class CalDAO {
	private static BoardDAO instance = null;

	public synchronized static BoardDAO getInstance() {
		if (instance == null) {
			instance = new BoardDAO();
		}
		return instance;
	}

	// d.b연결
	private Connection getConnection() throws Exception {
		Context ctx = new InitialContext();
		DataSource ds = (DataSource) ctx.lookup("java:comp/env/jdbc/orcl");
		return ds.getConnection();
	}

	// 캘린더 일정 삽입
	public int insert(int calendar_seq, String email, String title, String contents, String start, String end,
			String backgroundColor, String textColor) throws Exception {

		start += " 00:00:00";
		end += " 00:00:00";

		java.sql.Timestamp start_date = java.sql.Timestamp.valueOf(start);
		java.sql.Timestamp end_date = java.sql.Timestamp.valueOf(end);

		String sql = "insert into calendar values(calendar_seq.nextval,?, ?, ?, ?, ?, ?,? )";
		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {

			pstat.setString(1, email);
			pstat.setString(2, title);
			pstat.setString(3, contents);
			pstat.setTimestamp(4, start_date);
			pstat.setTimestamp(5, end_date);
			pstat.setString(6, backgroundColor);
			pstat.setString(7, textColor);

			int result = pstat.executeUpdate();
			con.commit();
			return result;
		}
	}

	public List<CalDTO> show(String email) throws Exception {
		String sql = "select * from calendar where email = '" + email + "'";

		try (Connection con = this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql);
				ResultSet rs = pstat.executeQuery();) {
			List<CalDTO> list = new ArrayList<CalDTO>();

			while (rs.next()) {
				int calendar_seq = rs.getInt("calendar_seq");
				email = rs.getString("email");
				String title = rs.getString("title");
				String contents = rs.getString("contents");
				Timestamp start = rs.getTimestamp("start_date");
				Timestamp end = rs.getTimestamp("end_date");
				String backgroundColor = rs.getString("backgroundColor");
				String textColor = rs.getString("textColor");

				CalDTO dto = new CalDTO(calendar_seq, email, title, contents, start, end, backgroundColor, textColor);
				list.add(dto);

			}
			return list;
		}
	}
}
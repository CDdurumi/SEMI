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
import dto.MessageDTO;

public class MessageDAO {

	public MessageDAO() {

	}

	// 싱글톤
	private static MessageDAO instance = null;

	public synchronized static MessageDAO getInstance() {
		if (instance == null) {
			instance = new MessageDAO();
		}
		return instance;
	}

	// db연결
	private Connection getConnection() throws Exception {
		Context ctx = new InitialContext();
		DataSource ds = (DataSource) ctx.lookup("java:comp/env/jdbc/orcl");
		return ds.getConnection();
	}

	// 메세지 입력
	public int insert(MessageDTO dto) throws Exception {
		String sql = "insert into message value(message_seq.nextval,?,?,?,?,sysdate)";

		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql)) {
			pstat.setString(1, dto.getTitle());
			pstat.setString(2, dto.getSender());
			pstat.setString(3, dto.getReceiver());
			pstat.setString(4, dto.getContents());

			int result = pstat.executeUpdate();

			con.commit();
			return result;
		}
	}

	// 메세지 삭제
	public int delete(int seq) throws Exception {
		String sql = "delete from message where message_seq=?";

		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql)) {

			pstat.setInt(1, seq);

			int result = pstat.executeUpdate();

			con.commit();
			return result;
		}
	}

	// 보낸 쪽지함 (확인필요)
	public List<MessageDTO> selectBySend(String id) throws Exception {

		String sql = "select * from message where sender=? order by message_seq";

		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql)) {
			pstat.setString(1, id);
			try (ResultSet rs = pstat.executeQuery()) {
				List<MessageDTO> list = new ArrayList<MessageDTO>();
				while (rs.next()) {
					int seq = rs.getInt("message_seq");
					String title = rs.getString("title");
					String sender = rs.getString("sender");
					String receiver = rs.getString("receiver");
					String contents = rs.getString("contents");
					Timestamp write_date = rs.getTimestamp("write_date");
				
					MessageDTO dto = new MessageDTO(seq, title, sender, receiver,contents, write_date);
					
					list.add(dto);
				}
				return list;
			}
		}
	}
	// 받는 쪽지함 (확인필요)
	public List<MessageDTO> selectByReceive(String id) throws Exception {

		String sql = "select * from message where receiver=? order by message_seq";

		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql)) {
			pstat.setString(1, id);
			try (ResultSet rs = pstat.executeQuery()) {
				List<MessageDTO> list = new ArrayList<MessageDTO>();
				while (rs.next()) {
					int seq = rs.getInt("message_seq");
					String title = rs.getString("title");
					String sender = rs.getString("sender");
					String receiver = rs.getString("receiver");
					String contents = rs.getString("contents");
					Timestamp write_date = rs.getTimestamp("write_date");
				
					MessageDTO dto = new MessageDTO(seq, title, sender, receiver, contents, write_date);
					
					list.add(dto);
				}
				return list;
			}
		}
	}
	// DB의 총 record 개수를 알아내기 위한 메소드
	private int getRecordTotalCount() throws Exception{
		String sql = "select count(*) from message";
		
		try(Connection con = this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql);
				ResultSet rs = pstat.executeQuery();){
			rs.next();
			return rs.getInt(1);	// count(*)로 전체 record 수가 출력되는데, 1열만 나오기 때문에
		}
	}
	// Page Navigator
	public String getPageNavi(int currentPage) throws Exception{
		int recordTotalCount = this.getRecordTotalCount();	// 총 게시글의 개수 -> 향후 실제 데이터베이스의 개수를 세어와야함
		
		int recordCountPerPage = 10;	// 한 페이지에 몇 개의 게시글을 보여줄 건지
		
		int naviCountPerPage = 5;		// 한 페이지에 몇 개의 네비를 보여 줄 건지
		
		int pageTotalCount = 0;			// 총 몇 개의 페이지가 필요한가?(우리가 정하는게 아니라 설정한 개수에 맞게 정해저야함)
		
		// 전체 페이지 수는 총 게시글에서 한 페이지에 보여지는 게시글의 개수를 나눈 값. 근데 나머지가 존재하면, +1 을 해줘야한다.
		if(recordTotalCount % recordCountPerPage > 0) {	// 전체 페이지 + 1 해야함(나머지가 존재할 때만)
			pageTotalCount = recordTotalCount / recordCountPerPage + 1;
		}else {
			pageTotalCount = recordTotalCount / recordCountPerPage;
		}
		
		// 현재 페이지가 비정상일 때 처리
		if(currentPage < 1) {
			currentPage = 1;
		}else if(currentPage > pageTotalCount) {
			currentPage = pageTotalCount;
		}
		
		// Page Navigator
		int startNavi = (currentPage-1) / naviCountPerPage * naviCountPerPage + 1;	// navi 시작의 공식 -> 현재 페이지의 십의 자리만 구해서 * naviPerPage +1 해주면 된다.
		int endNavi = startNavi + (naviCountPerPage - 1);
		
		if(endNavi > pageTotalCount) {	// 전체 페이지수 보다 endNavi 의 수가 클 수는 없다.
			endNavi = pageTotalCount;
		}
		
		boolean needNext = true;
		boolean needPrev = true;

		if(startNavi == 1) {
			needPrev = false;
		}
		if(endNavi == pageTotalCount) {
			needNext = false;
		}

		StringBuilder sb = new StringBuilder();

		if(needPrev) {
			sb.append("<li class='page-item'><a class= 'page-link' href='msgView.msg?cpage="+(startNavi-1)+"'> < </a></li>");
		}

		for(int i = startNavi; i <= endNavi; i++) {
			if(currentPage == i) {
				sb.append("<li class='page-item active'><a class= 'page-link' href='/msgView.msg?cpage="+i+"'>" + i + " </a></li>");	// 페이지 당 10개씩 보이도록 해야하기 때문에 현재 페이지를 매개변수로 보냄으로써 페이지 네비를 클릭할 때 어디로 가야하는지 알아야한다.
			}else {
				sb.append("<li class='page-item'><a class= 'page-link' href='/msgView.msg?cpage="+i+"'>" + i + " </a></li>");
			}
		}

		if(needNext) {
			sb.append("<li class='page-item'><a class= 'page-link' href='msgView.msg?cpage="+(endNavi+1)+"'> > </a></li>");
		}

		return sb.toString();
	}
	// Message에서 보여지는 게시글 개수를 정하기 위한 메소드
	public List<MessageDTO> selectBySendPage(String id) throws Exception{

		// 게시글의 번호를 세팅한다.
		int start = 1;
		int end = 10;

		// 한 페이지에 게시글이 10개씩 보여지도록 하기 위해서 row_number를 활용하는데, 서브 쿼리를 활용해서 select 해준다.
		String sql = "select * from (select row_number() over(order by write_date desc) line, message.* from message where sender=?) where (line between ? and ?) and (sender=?)";

		try(Connection con = this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql);){
			pstat.setString(1, id);
			pstat.setInt(2, start);
			pstat.setInt(3, end);
			pstat.setString(4, id);
			
			try(ResultSet rs = pstat.executeQuery();){
				List<MessageDTO> list = new ArrayList<MessageDTO>();

				while(rs.next()) {
					int line = rs.getInt("line");
					int seq = rs.getInt("message_seq");
					String title = rs.getString("title");
					String sender = rs.getString("sender");
					String receiver = rs.getString("receiver");
					String contents = rs.getString("contents");
					Timestamp write_date = rs.getTimestamp("write_date");
					
					SimpleDateFormat sdf = new SimpleDateFormat("YY년 MM월 dd일 HH:mm");
					String date = sdf.format(write_date);
					
					MessageDTO dto = new MessageDTO(line, seq, title, sender, receiver, contents, date);
					list.add(dto);
				}
				return list;
			}
		}
	}
	public List<MessageDTO> selectByReceivePage(String id) throws Exception{

		// 게시글의 번호를 세팅한다.
		int start = 1;
		int end = 10;

		// 한 페이지에 게시글이 10개씩 보여지도록 하기 위해서 row_number를 활용하는데, 서브 쿼리를 활용해서 select 해준다.
		String sql = "select * from (select row_number() over(order by write_date desc) line, message.* from message where receiver=?) where (line between ? and ?) and (receiver=?)";

		try(Connection con = this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql);){
			pstat.setString(1, id);
			pstat.setInt(2, start);
			pstat.setInt(3, end);
			pstat.setString(4, id);

			try(ResultSet rs = pstat.executeQuery();){
				List<MessageDTO> list = new ArrayList<MessageDTO>();
				
				while(rs.next()) {
					int line = rs.getInt("line");
					int seq = rs.getInt("message_seq");
					String title = rs.getString("title");
					String sender = rs.getString("sender");
					String receiver = rs.getString("receiver");
					String contents = rs.getString("contents");
					Timestamp write_date = rs.getTimestamp("write_date");
					
					SimpleDateFormat sdf = new SimpleDateFormat("YY년 MM월 dd일 HH:mm");
					String date = sdf.format(write_date);

					MessageDTO dto = new MessageDTO(line, seq, title, sender, receiver, contents, date);
					
					
					list.add(dto);
				}
				return list;
			}
		}
	}
	
	
	
	
}
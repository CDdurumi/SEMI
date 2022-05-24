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

public class BoardDAO {

	// 싱글턴
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

	// NEXT SEQ 가져오기(해당 작성글 seq)
	public String getSeqNextVal(String boardOption) throws Exception {
		String boardSeq = "";
		if (boardOption.equals("f")) {// 자유게시판
			boardSeq = "free_board_seq";
		} else if (boardOption.equals("g")) {// 여행후기
			boardSeq = "gallery_board_seq ";
		} else if (boardOption.equals("j")) {// 구인구직
			boardSeq = "job_board_seq";
		} else if (boardOption.equals("r")) {// 맛집
			boardSeq = "restaurant_board_seq";
		} else if (boardOption.equals("h")) {// 숙소리뷰
			boardSeq = "house_board_seq";
		} else if (boardOption.equals("e")) {// 숙소리뷰
			boardSeq = "editor_board_seq ";
		}

		String sql = "select '" + boardOption + "'||" + boardSeq + ".nextval from dual ";
		try (Connection con = this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql);
				ResultSet rs = pstat.executeQuery();) {
			rs.next();
			return rs.getString(1);
		}
	}

	// 삽입
	public int insert(BoardDTO dto) throws Exception {

		String sql = "insert into all_board values(?, ?, ?, ?, default, default, default, default)";
		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
			pstat.setString(1, dto.getAll_board_seq());
			pstat.setString(2, dto.getId());
			pstat.setString(3, dto.getTitle());
			pstat.setString(4, dto.getContents());

			int result = pstat.executeUpdate();
			con.commit();
			return result;
		}
	}

	// 게시글 삭제
	public int delete(String seq) throws Exception {

		String sql = "delete from all_board where all_board_seq = ? ";
		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
			pstat.setString(1, seq);

			int result = pstat.executeUpdate();
			con.commit();
			return result;
		}
	}

	// 게시글 정보 get(고유seq로 검색)
	public BoardDTO selectBySeq(String sseq) throws Exception {
		String sql = "select * from all_board where all_board_seq = ? ";

		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
			pstat.setString(1, sseq);

			try (ResultSet rs = pstat.executeQuery()) {
				rs.next();
				String all_board_seq = rs.getString("all_board_seq");
				String id = rs.getString("id");
				String title = rs.getString("title");
				String contents = rs.getString("contents");
				Timestamp write_date = rs.getTimestamp("write_date");
				int like_count = rs.getInt("like_count");
				int jjim_count = rs.getInt("jjim_count");
				int view_count = rs.getInt("view_count");
				return (new BoardDTO(all_board_seq, id, title, contents, write_date, like_count, jjim_count,
						view_count));
			}
		}
	}

	// 좋아요 카운트 upDown
	public int likeCountUpDown(String seq, int upDown) throws Exception {
		String plusMinus = "";
		if (upDown == 1) {// 카운트 증가
			plusMinus = "+";
		} else if (upDown == 0) {// 카운트 감소
			plusMinus = "-";
		}

		String sql = "update all_board set like_count = like_count " + plusMinus + "1 where all_board_seq =? ";
		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
			pstat.setString(1, seq);
			int result = pstat.executeUpdate();
			con.commit();
			return result;
		}
	}

	// 찜 카운트 upDown
	public int jjimCountUpDown(String seq, int upDown) throws Exception {
		String plusMinus = "";
		if (upDown == 1) {// 카운트 증가
			plusMinus = "+";
		} else if (upDown == 0) {// 카운트 감소
			plusMinus = "-";
		}
		String sql = "update all_board set jjim_count = jjim_count " + plusMinus + "1 where all_board_seq =? ";
		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
			pstat.setString(1, seq);
			int result = pstat.executeUpdate();
			con.commit();
			return result;
		}
	}

	// 좋아요 개수 반환
	public int getLikeCount(String seq) throws Exception {

		String sql = "select like_count from all_board where all_board_seq = ? ";
		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql)) {
			pstat.setString(1, seq);

			try (ResultSet rs = pstat.executeQuery();) {
				rs.next();
				return rs.getInt(1);
			}
		}
	}

	// 찜 개수 반환
	public int getJjimCount(String seq) throws Exception {

		String sql = "select jjim_count from all_board where all_board_seq = ? ";
		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql)) {
			pstat.setString(1, seq);

			try (ResultSet rs = pstat.executeQuery();) {
				rs.next();
				return rs.getInt(1);
			}
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

	// 조회수 증가
	public int viewCountUp(String seq) throws Exception {
		String sql = "update all_board set view_count = view_count+1 where all_board_seq =? ";
		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
			pstat.setString(1, seq);
			int result = pstat.executeUpdate();
			con.commit();
			return result;
		}
	}

	// 게시판 리스트 출력
	public List<BoardDTO> selectAll() throws Exception {
		String sql = "select * from all_board order by all_board_seq desc";

		try (Connection con = this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql);
				ResultSet rs = pstat.executeQuery();) {
			List<BoardDTO> list = new ArrayList<BoardDTO>();

			while (rs.next()) {
				String seq = rs.getString("free_board_seq");
				String id = rs.getString("id");
				String title = rs.getString("title");
				String contents = rs.getString("contents");
				Timestamp write_date = rs.getTimestamp("write_date");
				int like_count = rs.getInt("like_count");
				int jjim_count = rs.getInt("jjim_count");
				int view_count = rs.getInt("view_count");

				BoardDTO dto = new BoardDTO(seq, id, title, contents, write_date, like_count, jjim_count, view_count);
				list.add(dto);
			}
			return list;
		}
	}

	// 제목 클릭시 게시글 출력 //// 아직 시도 안해봄(조양기)
	public BoardDTO selectBySeq(int cseq) throws Exception {
		String sql = "select * from all_board where all_board_seq=?";

		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
			pstat.setInt(1, cseq);

			try (ResultSet rs = pstat.executeQuery();) {
				rs.next();
				String seq = rs.getString("all_board_seq");
				String id = rs.getString("id");
				String title = rs.getString("title");
				String contents = rs.getString("contents");
				Timestamp write_date = rs.getTimestamp("write_date");
				int like_count = rs.getInt("like_count");
				int jjim_count = rs.getInt("jjim_count");
				int view_count = rs.getInt("view_count");

				BoardDTO dto = new BoardDTO(seq, id, title, contents, write_date, like_count, jjim_count, view_count);
				return dto;
			}
		}
	}

	// DB의 총 record 개수를 알아내기 위한 메소드
	private int getRecordTotalCount() throws Exception {
		String sql = "select count(*) from all_board";

		try (Connection con = this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql);
				ResultSet rs = pstat.executeQuery();) {
			rs.next();
			return rs.getInt(1); // count(*)로 전체 record 수가 출력되는데, 1열만 나오기 때문에
		}
	}

	// Page Navigator
	public String getPageNavi(int currentPage) throws Exception {
		int recordTotalCount = this.getRecordTotalCount(); // 총 게시글의 개수 -> 향후 실제 데이터베이스의 개수를 세어와야함

		int recordCountPerPage = 10; // 한 페이지에 몇 개의 게시글을 보여줄 건지

		int naviCountPerPage = 5; // 한 페이지에 몇 개의 네비를 보여 줄 건지

		int pageTotalCount = 0; // 총 몇 개의 페이지가 필요한가?(우리가 정하는게 아니라 설정한 개수에 맞게 정해저야함)

		// 전체 페이지 수는 총 게시글에서 한 페이지에 보여지는 게시글의 개수를 나눈 값. 근데 나머지가 존재하면, +1 을 해줘야한다.
		if (recordTotalCount % recordCountPerPage > 0) { // 전체 페이지 + 1 해야함(나머지가 존재할 때만)
			pageTotalCount = recordTotalCount / recordCountPerPage + 1;
		} else {
			pageTotalCount = recordTotalCount / recordCountPerPage;
		}

		// 현재 페이지가 비정상일 때 처리
		if (currentPage < 1) {
			currentPage = 1;
		} else if (currentPage > pageTotalCount) {
			currentPage = pageTotalCount;
		}

		// Page Navigator
		int startNavi = (currentPage - 1) / naviCountPerPage * naviCountPerPage + 1; // navi 시작의 공식 -> 현재 페이지의 십의 자리만
																						// 구해서 * naviPerPage +1 해주면 된다.
		int endNavi = startNavi + (naviCountPerPage - 1);

		if (endNavi > pageTotalCount) { // 전체 페이지수 보다 endNavi 의 수가 클 수는 없다.
			endNavi = pageTotalCount;
		}

		boolean needNext = true;
		boolean needPrev = true;

		if (startNavi == 1) {
			needPrev = false;
		}
		if (endNavi == pageTotalCount) {
			needNext = false;
		}

		StringBuilder sb = new StringBuilder();

		if (needPrev) {
			sb.append("<li class='page-item'><a class= 'page-link' href='boardMainView.board?cpage=" + (startNavi - 1)
					+ "'> < </a></li>");
		}

		for (int i = startNavi; i <= endNavi; i++) {
			if (currentPage == i) {
				sb.append("<li class='page-item active'><a class= 'page-link' href='/boardMainView.board?cpage=" + i
						+ "'>" + i + " </a></li>"); // 페이지 당 10개씩 보이도록 해야하기 때문에 현재 페이지를 매개변수로 보냄으로써 페이지 네비를 클릭할 때 어디로
													// 가야하는지 알아야한다.
			} else {
				sb.append("<li class='page-item'><a class= 'page-link' href='/boardMainView.board?cpage=" + i + "'>" + i
						+ " </a></li>");
			}
		}

		if (needNext) {
			sb.append("<li class='page-item'><a class= 'page-link' href='boardMainView.board?cpage=" + (endNavi + 1)
					+ "'> > </a></li>");
		}

		return sb.toString();
	}

	// boradlist에서 보여지는 게시글 개수를 정하기 위한 메소드
	public List<BoardDTO> selectByPage(int cpage) throws Exception {

		// 게시글의 번호를 세팅한다.
		int start = cpage * 10 - 9;
		int end = cpage * 10;

		// 한 페이지에 게시글이 10개씩 보여지도록 하기 위해서 row_number를 활용하는데, 서브 쿼리를 활용해서 select 해준다.
		String sql = "select * from (select row_number() over(order by write_date desc) line, all_board.* from all_board) where line between ? and ?";

		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
			pstat.setInt(1, start);
			pstat.setInt(2, end);

			try (ResultSet rs = pstat.executeQuery();) {
				List<BoardDTO> list = new ArrayList<BoardDTO>();

				while (rs.next()) {
					String seq = rs.getString("all_board_seq");
					String id = rs.getString("id");
					String title = rs.getString("title");
					String contents = rs.getString("contents");
					Timestamp write_date = rs.getTimestamp("write_date");
					int like_count = rs.getInt("jjim_count");
					int jjim_count = rs.getInt("like_count");
					int view_count = rs.getInt("view_count");

					BoardDTO dto = new BoardDTO(seq, id, title, contents, write_date, jjim_count, like_count,
							view_count);
					list.add(dto);
				}
				return list;
			}
		}
	}

	// 화제글 list
	public List<BoardDTO> selectByLikeCount() throws Exception {

		int start = 1;
		int end = 6;

		String sql = "select * from (select row_number() over(order by like_count desc, view_count desc) line, all_board.* from all_board) where line between ? and ?";
		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
			pstat.setInt(1, start);
			pstat.setInt(2, end);
			try (ResultSet rs = pstat.executeQuery();) {
				List<BoardDTO> list = new ArrayList<BoardDTO>();

				while (rs.next()) {
					String seq = rs.getString("all_board_seq");
					String id = rs.getString("id");
					String title = rs.getString("title");
					String contents = rs.getString("contents");
					Timestamp write_date = rs.getTimestamp("write_date");
					int like_count = rs.getInt("jjim_count");
					int jjim_count = rs.getInt("like_count");
					int view_count = rs.getInt("view_count");

					BoardDTO dto = new BoardDTO(seq, id, title, contents, write_date, jjim_count, like_count,
							view_count);
					list.add(dto);
				}
				return list;
			}
		}
	}
}

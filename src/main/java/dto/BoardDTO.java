package dto;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;

public class BoardDTO {
	private String all_board_seq;
	private String id;
	private String title;
	private String contents;
	private Timestamp write_date;
	private int like_count;
	private int jjim_count;
	private int view_count;
	private String editor_type;
	private int line;
	private String date;
	private Timestamp jjimm_date;
	private String jjim_date;
	private String jjim_id;
	public BoardDTO() {
		// TODO Auto-generated constructor stub
	}
	
	public BoardDTO(String all_board_seq, String id, String title, String contents, Timestamp write_date,
			int like_count, int jjim_count, int view_count, String editor_type, int line) {
		super();
		this.all_board_seq = all_board_seq;
		this.id = id;
		this.title = title;
		this.contents = contents;
		this.write_date = write_date;
		this.like_count = like_count;
		this.jjim_count = jjim_count;
		this.view_count = view_count;
		this.editor_type = editor_type;
		this.line = line;
	}
	// 마이페이지에 게시글 가져오는 DTO
	public BoardDTO(String all_board_seq, String id, String title, String contents, String date,
			int like_count, int jjim_count, int view_count, String editor_type, int line) {
		super();
		this.all_board_seq = all_board_seq;
		this.id = id;
		this.title = title;
		this.contents = contents;
		this.date = date;
		this.like_count = like_count;
		this.jjim_count = jjim_count;
		this.view_count = view_count;
		this.editor_type = editor_type;
		this.line = line;
	}
	// 마이페이지에 찜 게시글 가져오는 DTO
	
	
	
	public String getDate() {
		return date;
	}
	public BoardDTO(String all_board_seq, String id, String title, String contents, String date,
			int like_count, int jjim_count, int view_count, String editor_type, int line,
			String jjim_date, String jjim_id) {
		super();
		this.all_board_seq = all_board_seq;
		this.id = id;
		this.title = title;
		this.contents = contents;
		this.write_date = write_date;
		this.like_count = like_count;
		this.jjim_count = jjim_count;
		this.view_count = view_count;
		this.editor_type = editor_type;
		this.line = line;
		this.jjim_date = jjim_date;
		this.jjim_id = jjim_id;
	}
	
	public String getJjim_date() {
		return jjim_date;
	}

	public void setJjim_date(String jjim_date) {
		this.jjim_date = jjim_date;
	}

	public Timestamp getJjimm_date() {
		return jjimm_date;
	}

	public void setJjimm_date(Timestamp jjimm_date) {
		this.jjimm_date = jjimm_date;
	}

	public String getJjim_id() {
		return jjim_id;
	}

	public void setJjim_id(String jjim_id) {
		this.jjim_id = jjim_id;
	}

	public void setDate(String date) {
		this.date = date;
	}
	public String getAll_board_seq() {
		return all_board_seq;
	}
	public void setAll_board_seq(String all_board_seq) {
		this.all_board_seq = all_board_seq;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public Timestamp getWrite_date() {
		return write_date;
	}
	public void setWrite_date(Timestamp write_date) {
		this.write_date = write_date;
	}
	public int getLike_count() {
		return like_count;
	}
	public void setLike_count(int like_count) {
		this.like_count = like_count;
	}
	public int getJjim_count() {
		return jjim_count;
	}
	public void setJjim_count(int jjim_count) {
		this.jjim_count = jjim_count;
	}
	public int getView_count() {
		return view_count;
	}
	public void setView_count(int view_count) {
		this.view_count = view_count;
	}
	public String getEditor_type() {
		return editor_type;
	}
	public void setEditor_type(String editor_type) {
		this.editor_type = editor_type;
	}
	public int getLine() {
		return line;
	}
	public void setLine(int line) {
		this.line = line;
	}

	//날짜 format
	public String getFormdDate() {
		SimpleDateFormat sdf = new SimpleDateFormat("YYYY년 MM월 dd일 HH:mm");
		return sdf.format(this.write_date);
	}
	
	public String getEditorFormdDate() {
		SimpleDateFormat sdf = new SimpleDateFormat("YYYY / MM / dd");
		return sdf.format(this.write_date);
	}



}

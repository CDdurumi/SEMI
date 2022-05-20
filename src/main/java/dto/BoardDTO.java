package dto;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;

public class BoardDTO {
	private String free_board_seq;
	private String id;
	private String title;
	private String contents;
	private Timestamp write_date;
	private int like_count;
	private int jjim_count;
	private int view_count;
	
	public BoardDTO() {
	}
	public BoardDTO(String free_board_seq, String id, String title, String contents, Timestamp write_date,
			int like_count, int jjim_count, int view_count) {
		super();
		this.free_board_seq = free_board_seq;
		this.id = id;
		this.title = title;
		this.contents = contents;
		this.write_date = write_date;
		this.like_count = like_count;
		this.jjim_count = jjim_count;
		this.view_count = view_count;
	}
	public String getFree_board_seq() {
		return free_board_seq;
	}
	public void setFree_board_seq(String free_board_seq) {
		this.free_board_seq = free_board_seq;
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

	//날짜 format
	public String getFormdDate() {
		SimpleDateFormat sdf = new SimpleDateFormat("YYYY년 MM월 dd일 HH:mm");
		return sdf.format(this.write_date);
	}	
}

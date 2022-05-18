package dto;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;

public class FreeBoardDTO {
	private String free_board_seq;
	private String id;
	private String title;
	private String contents;
	private Timestamp write_date;
	private int like_count;
	private String jjim;
	private int view_count;
	
	public FreeBoardDTO() {
	}
	public FreeBoardDTO(String free_board_seq, String id, String title, String contents, Timestamp write_date,
			int like_count, String jjim, int view_count) {
		super();
		this.free_board_seq = free_board_seq;
		this.id = id;
		this.title = title;
		this.contents = contents;
		this.write_date = write_date;
		this.like_count = like_count;
		this.jjim = jjim;
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
	public String getJjim() {
		return jjim;
	}
	public void setJjim(String jjim) {
		this.jjim = jjim;
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

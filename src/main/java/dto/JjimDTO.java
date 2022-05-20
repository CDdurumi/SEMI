package dto;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;

public class JjimDTO {
	private String board_seq;
	private String jjim_id;
	private Timestamp jjim_date;
	
	public JjimDTO() {
	}
	public JjimDTO(String board_seq, String jjim_id, Timestamp jjim_date) {
		super();
		this.board_seq = board_seq;
		this.jjim_id = jjim_id;
		this.jjim_date = jjim_date;
	}
	public String getBoard_seq() {
		return board_seq;
	}
	public void setBoard_seq(String board_seq) {
		this.board_seq = board_seq;
	}
	public String getJjim_id() {
		return jjim_id;
	}
	public void setJjim_id(String jjim_id) {
		this.jjim_id = jjim_id;
	}
	public Timestamp getJjim_date() {
		return jjim_date;
	}
	public void setJjim_date(Timestamp jjim_date) {
		this.jjim_date = jjim_date;
	}
	
	
	//날짜 format
	public String getFormdDate() {
		SimpleDateFormat sdf = new SimpleDateFormat("YYYY년 MM월 dd일 HH:mm");
		return sdf.format(this.jjim_date);
	}	
	
}

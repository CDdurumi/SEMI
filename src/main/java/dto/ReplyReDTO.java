package dto;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;

public class ReplyReDTO {
	private String reply_re_seq;
	private String id;
	private String contents;
	private Timestamp write_date;
	private String parnet_seq;
	
	public ReplyReDTO() {
	}
	public ReplyReDTO(String reply_re_seq, String id, String contents, Timestamp write_date, String parnet_seq) {
		super();
		this.reply_re_seq = reply_re_seq;
		this.id = id;
		this.contents = contents;
		this.write_date = write_date;
		this.parnet_seq = parnet_seq;
	}
	public String getReply_re_seq() {
		return reply_re_seq;
	}
	public void setReply_re_seq(String reply_re_seq) {
		this.reply_re_seq = reply_re_seq;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
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
	public String getParnet_seq() {
		return parnet_seq;
	}
	public void setParnet_seq(String parnet_seq) {
		this.parnet_seq = parnet_seq;
	}
	
	//날짜 format
	public String getFormdDate() {
		SimpleDateFormat sdf = new SimpleDateFormat("YYYY년 MM월 dd일 HH:mm");
		return sdf.format(this.write_date);
	}
}

package dto;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;

public class MessageDTO {
	
	private int line;
	private int message_seq;
	private String title;
	private String sender;
	private String receiver;
	private String contents;
	private Timestamp write_date;
	private String date;

	public MessageDTO() {
		super();
	}
	public MessageDTO(int message_seq, String title, String sender, String receiver, String contents,
			Timestamp write_date) {
		super();
		this.message_seq = message_seq;
		this.title = title;
		this.sender = sender;
		this.receiver = receiver;
		this.contents = contents;
		this.write_date = write_date;
	}
	public MessageDTO(int line, int message_seq, String title, String sender, String receiver, String contents,
			Timestamp write_date) {
		super();
		this.line = line;
		this.message_seq = message_seq;
		this.title = title;
		this.sender = sender;
		this.receiver = receiver;
		this.contents = contents;
		this.write_date = write_date;
	}
	public MessageDTO(int line, int message_seq, String title, String sender, String receiver, String contents,
			String date) {
		super();
		this.line = line;
		this.message_seq = message_seq;
		this.title = title;
		this.sender = sender;
		this.receiver = receiver;
		this.contents = contents;
		this.date = date;
	}
	
	public int getLine() {
		return line;
	}

	public void setLine(int line) {
		this.line = line;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public int getMessage_seq() {
		return message_seq;
	}
	public void setMessage_seq(int message_seq) {
		this.message_seq = message_seq;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getSender() {
		return sender;
	}
	public void setSender(String sender) {
		this.sender = sender;
	}
	public String getReceiver() {
		return receiver;
	}
	public void setReceiver(String receiver) {
		this.receiver = receiver;
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
}

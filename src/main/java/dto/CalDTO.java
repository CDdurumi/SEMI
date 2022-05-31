package dto;

import java.sql.Timestamp;

public class CalDTO {

    public CalDTO() {
        super();
    }
    private int calendar_seq;
    private String email;
    private String title;
    private String contents;
    private Timestamp start; 
    private Timestamp end; 
    private String backgroundColor;
    private String textColor;
	public CalDTO(int calendar_seq, String email, String title, String contents, Timestamp start, Timestamp end,
			String backgroundColor, String textColor) {
		this.calendar_seq = calendar_seq;
		this.email = email;
		this.title = title;
		this.contents = contents;
		this.start = start;
		this.end = end;
		this.backgroundColor = backgroundColor;
		this.textColor = textColor;
	}
	public int getCalendar_seq() {
		return calendar_seq;
	}
	public void setCalendar_seq(int calendar_seq) {
		this.calendar_seq = calendar_seq;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
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
	public Timestamp getStart() {
		return start;
	}
	public void setStart(Timestamp start) {
		this.start = start;
	}
	public Timestamp getEnd() {
		return end;
	}
	public void setEnd(Timestamp end) {
		this.end = end;
	}
	public String getBackgroundColor() {
		return backgroundColor;
	}
	public void setBackgroundColor(String backgroundColor) {
		this.backgroundColor = backgroundColor;
	}
	public String getTextColor() {
		return textColor;
	}
	public void setTextColor(String textColor) {
		this.textColor = textColor;
	}
	
   

}
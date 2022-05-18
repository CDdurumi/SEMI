package dto;

import java.sql.Date;

public class MemberDTO {
	public MemberDTO(String id, String pw, String email, Date join_date, String information) {
		this.id = id;
		this.pw = pw;
		this.email = email;
		this.join_date = join_date;
		this.information = information;
	}
	
	private String id;
	private String pw;
	private String email;
	private Date join_date;	
	private String information;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getJoin_date() {
		return join_date;
	}
	public void setJoin_date(Date join_date) {
		this.join_date = join_date;
	}
	public String getInformation() {
		return information;
	}
	public void setInformation(String information) {
		this.information = information;
	}
}

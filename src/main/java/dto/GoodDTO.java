package dto;

import java.sql.Timestamp;

public class GoodDTO {
	private String board_seq;
	private String good_id;
	private Timestamp good_date;
	
	public GoodDTO() {
	}
	public GoodDTO(String board_seq, String good_id, Timestamp good_date) {
		super();
		this.board_seq = board_seq;
		this.good_id = good_id;
		this.good_date = good_date;
	}
	public String getBoard_seq() {
		return board_seq;
	}
	public void setBoard_seq(String board_seq) {
		this.board_seq = board_seq;
	}
	public String getGood_id() {
		return good_id;
	}
	public void setGood_id(String good_id) {
		this.good_id = good_id;
	}
	public Timestamp getGood_date() {
		return good_date;
	}
	public void setGood_date(Timestamp good_date) {
		this.good_date = good_date;
	}

	
	
}

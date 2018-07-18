package crm.entity;

import java.util.Date;

public class Meet {

	
	private Integer mid;
	private Customer cust;
	private String meetime;
	private String meetaddress;
	private String summary;
	private String meetinfo;
	private String meetnotes;
	
	public Integer getMid() {
		return mid;
	}
	public void setMid(Integer mid) {
		this.mid = mid;
	}
	public Customer getCust() {
		return cust;
	}
	public void setCust(Customer cust) {
		this.cust = cust;
	}
	
	
	public String getMeetime() {
		return meetime;
	}
	public void setMeetime(String meetime) {
		this.meetime = meetime;
	}
	public String getMeetaddress() {
		return meetaddress;
	}
	public void setMeetaddress(String meetaddress) {
		this.meetaddress = meetaddress;
	}
	public String getSummary() {
		return summary;
	}
	public void setSummary(String summary) {
		this.summary = summary;
	}
	public String getMeetinfo() {
		return meetinfo;
	}
	public void setMeetinfo(String meetinfo) {
		this.meetinfo = meetinfo;
	}
	public String getMeetnotes() {
		return meetnotes;
	}
	public void setMeetnotes(String meetnotes) {
		this.meetnotes = meetnotes;
	}
	
	
}

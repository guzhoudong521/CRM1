package crm.entity;

public class Contact {
	private int contcatid;
	private Customer customer;
	private String coname;
	private String cosex;
	private String cojob;
	private String workphone;
	private String cophone;
	private String notes;
	public int getContcatid() {
		return contcatid;
	}
	public void setContcatid(int contcatid) {
		this.contcatid = contcatid;
	}
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	public String getConame() {
		return coname;
	}
	public void setConame(String coname) {
		this.coname = coname;
	}
	public String getCosex() {
		return cosex;
	}
	public void setCosex(String cosex) {
		this.cosex = cosex;
	}
	public String getCojob() {
		return cojob;
	}
	public void setCojob(String cojob) {
		this.cojob = cojob;
	}
	public String getWorkphone() {
		return workphone;
	}
	public void setWorkphone(String workphone) {
		this.workphone = workphone;
	}
	public String getCophone() {
		return cophone;
	}
	public void setCophone(String cophone) {
		this.cophone = cophone;
	}
	public String getNotes() {
		return notes;
	}
	public void setNotes(String notes) {
		this.notes = notes;
	}
}

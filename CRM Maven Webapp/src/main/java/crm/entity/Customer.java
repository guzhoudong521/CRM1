package crm.entity;

import java.util.List;

public class Customer {
	private int custid;
	private String cname;
	private Area area;
	private Custgrade custgrade;
	private List<Contact> list;
	private Users mgr;
	private List<Meet> meetlist;
	
	
	
	
	
	public List<Meet> getMeetlist() {
		return meetlist;
	}
	public void setMeetlist(List<Meet> meetlist) {
		this.meetlist = meetlist;
	}
	public Users getMgr() {
		return mgr;
	}
	public void setMgr(Users mgr) {
		this.mgr = mgr;
	}
	public int getCustid() {
		return custid;
	}
	public void setCustid(int custid) {
		this.custid = custid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public Area getArea() {
		return area;
	}
	public void setArea(Area area) {
		this.area = area;
	}
	public Custgrade getCustgrade() {
		return custgrade;
	}
	public void setCustgrade(Custgrade custgrade) {
		this.custgrade = custgrade;
	}
	public List<Contact> getList() {
		return list;
	}
	public void setList(List<Contact> list) {
		this.list = list;
	}
	
}

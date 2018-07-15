package crm.entity;

import java.util.List;

public class Authority {
	private long aid;
	private String aname;
	private List<AuthorDetail> list;
	
	public List<AuthorDetail> getList() {
		return list;
	}
	public void setList(List<AuthorDetail> list) {
		this.list = list;
	}
	public long getAid() {
		return aid;
	}
	public void setAid(long aid) {
		this.aid = aid;
	}
	public String getAname() {
		return aname;
	}
	public void setAname(String aname) {
		this.aname = aname;
	}
}

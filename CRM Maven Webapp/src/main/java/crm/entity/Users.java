package crm.entity;

import java.util.List;

public class Users {
	private int userid;
	private String uname;
	private String pwd;
	private int roleid;  
	private List<Authority> list;
	
	
	public List<Authority> getList() {
		return list;
	}
	public void setList(List<Authority> list) {
		this.list = list;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public int getRoleid() {
		return roleid;
	}
	public void setRoleid(int roleid) {
		this.roleid = roleid;
	}
	
	
	
}

package crm.entity;

import java.util.Date;

public class Notice {
	private int id;
	private String title;
	private String content;
	private Date createtime;
	private Users createuser;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getCreatetime() {
		return createtime;
	}
	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}
	public Users getCreateuser() {
		return createuser;
	}
	public void setCreateuser(Users createuser) {
		this.createuser = createuser;
	}
}

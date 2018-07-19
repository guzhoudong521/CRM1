package crm.entity;

import java.util.Date;

public class Message {
	private int id;                  //消息id
	private Users suser;        //发送人
	private Users ruser;        //接收人
	private String title;        //标题
	private String content;  //内容
	private Date createtime;//创建时间
	private String status;     //消息状态
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Users getSuser() {
		return suser;
	}
	public void setSuser(Users suser) {
		this.suser = suser;
	}
	public Users getRuser() {
		return ruser;
	}
	public void setRuser(Users ruser) {
		this.ruser = ruser;
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
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
}

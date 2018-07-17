package crm.entity;

import java.util.Date;
import java.util.List;

public class Services {
	private int id;       
	private Users createuser;    //创建人
	private Date createtime;    //创建时间
	private String status;         //状态
	private String customer;    //客户
	private String servicetyle;   //服务类型
	private String des;             //服务请求
	private Users allotuser;      //分配给
	private Date allottime;       //分配时间
	private String dispose;       //服务处理
	private Date disposetime;  //处理时间
	private Users disposeuser;   //处理人
	private List<Users> list;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Users getCreateuser() {
		return createuser;
	}
	public void setCreateuser(Users createuser) {
		this.createuser = createuser;
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
	public String getCustomer() {
		return customer;
	}
	public void setCustomer(String customer) {
		this.customer = customer;
	}
	public String getServicetyle() {
		return servicetyle;
	}
	public void setServicetyle(String servicetyle) {
		this.servicetyle = servicetyle;
	}
	public String getDes() {
		return des;
	}
	public void setDes(String des) {
		this.des = des;
	}
	public Users getAllotuser() {
		return allotuser;
	}
	public void setAllotuser(Users allotuser) {
		this.allotuser = allotuser;
	}
	public Date getAllottime() {
		return allottime;
	}
	public void setAllottime(Date allottime) {
		this.allottime = allottime;
	}
	public String getDispose() {
		return dispose;
	}
	public void setDispose(String dispose) {
		this.dispose = dispose;
	}
	public Date getDisposetime() {
		return disposetime;
	}
	public void setDisposetime(Date disposetime) {
		this.disposetime = disposetime;
	}
	public Users getDisposeuser() {
		return disposeuser;
	}
	public void setDisposeuser(Users disposeuser) {
		this.disposeuser = disposeuser;
	}
	public List<Users> getList() {
		return list;
	}
	public void setList(List<Users> list) {
		this.list = list;
	}
	
}

package crm.entity;

import java.util.List;

public class Orders {

	
	private Integer oid;
	private Customer cust;
	private String ordtime;
	private String address;
	private String status;
	private double sum;
	private List<OrderDetail> list;
	
	
	
	
	public double getSum() {
		return sum;
	}
	public void setSum(double sum) {
		this.sum = sum;
	}
	public List<OrderDetail> getList() {
		return list;
	}
	public void setList(List<OrderDetail> list) {
		this.list = list;
	}
	public Integer getOid() {
		return oid;
	}
	public void setOid(Integer oid) {
		this.oid = oid;
	}
	public Customer getCust() {
		return cust;
	}
	public void setCust(Customer cust) {
		this.cust = cust;
	}
	public String getOrdtime() {
		return ordtime;
	}
	public void setOrdtime(String ordtime) {
		this.ordtime = ordtime;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}

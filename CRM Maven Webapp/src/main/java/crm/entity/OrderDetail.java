package crm.entity;

public class OrderDetail {

	
	private Integer odid;
	private Orders ord;
	private Integer pnum;
	private Product pro;
	private Double sumprice;
	private Integer id;

	
	
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getOdid() {
		return odid;
	}
	public void setOdid(Integer odid) {
		this.odid = odid;
	}
	public Orders getOrd() {
		return ord;
	}
	public void setOrd(Orders ord) {
		this.ord = ord;
	}
	public Integer getPnum() {
		return pnum;
	}
	public void setPnum(Integer pnum) {
		this.pnum = pnum;
	}
	public Product getPro() {
		return pro;
	}
	public void setPro(Product pro) {
		this.pro = pro;
	}
	public Double getSumprice() {
		return sumprice;
	}
	public void setSumprice(Double sumprice) {
		this.sumprice = sumprice;
	}
	
	
	
}

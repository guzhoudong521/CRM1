package crm.entity;

public class Product {

	
	private Integer pid;
	private String pname;
	private String unit;
	private Double price;
	private String ptype;
	private String pgrade;
	private String pdesc;
	private Kucun kucun;
	
	
	
	public String getPtype() {
		return ptype;
	}
	public void setPtype(String ptype) {
		this.ptype = ptype;
	}
	public String getPgrade() {
		return pgrade;
	}
	public void setPgrade(String pgrade) {
		this.pgrade = pgrade;
	}
	public String getPdesc() {
		return pdesc;
	}
	public void setPdesc(String pdesc) {
		this.pdesc = pdesc;
	}
	public Integer getPid() {
		return pid;
	}
	public void setPid(Integer pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getUnit() {
		return unit;
	}
	public void setUnit(String unit) {
		this.unit = unit;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public Kucun getKucun() {
		return kucun;
	}
	public void setKucun(Kucun kucun) {
		this.kucun = kucun;
	}
	
	
	
}

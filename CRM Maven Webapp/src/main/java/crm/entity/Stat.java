package crm.entity;

public class Stat {

	private Integer id;
	private Integer otherid;
	private String gradename;
	private long sum;
	private String sertype;
	private String name;
	
	

	public Integer getOtherid() {
		return otherid;
	}
	public void setOtherid(Integer otherid) {
		this.otherid = otherid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSertype() {
		return sertype;
	}
	public void setSertype(String sertype) {
		this.sertype = sertype;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getGradename() {
		return gradename;
	}
	public void setGradename(String gradename) {
		this.gradename = gradename;
	}
	public long getSum() {
		return sum;
	}
	public void setSum(long sum) {
		this.sum = sum;
	}
	
	
	
}

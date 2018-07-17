package crm.util;

import java.util.Date;
import java.util.List;

public class QueryParam {
	private int page=1;              //页码
	private int pageSize=5;       //每页条数
	private int maxPages;        //总页数
	private int maxRows;         //总条数
	private List   list; 
	private Integer gonghao;
	private String name;
	private String lianxiren;
	private Date chuangjianshijian1;
	private Date chuangjianshijian2;
	private String zhuangtai;
	private Integer areaid;
	private Integer gradeid;
	private Integer custid;
	private String servicetyle;
	
	
	public String getServicetyle() {
		return servicetyle;
	}
	public void setServicetyle(String servicetyle) {
		this.servicetyle = servicetyle;
	}
	public Integer getCustid() {
		return custid;
	}
	public void setCustid(Integer custid) {
		this.custid = custid;
	}
	public Integer getGradeid() {
		return gradeid;
	}
	public void setGradeid(Integer gradeid) {
		this.gradeid = gradeid;
	}
	public Integer getAreaid() {
		return areaid;
	}
	public void setAreaid(Integer areaid) {
		this.areaid = areaid;
	}
	public String getZhuangtai() {
		return zhuangtai;
	}
	public void setZhuangtai(String zhuangtai) {
		this.zhuangtai = zhuangtai;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getMaxPages() {
		return maxPages;
	}
	public void setMaxPages(int maxPages) {
		this.maxPages = maxPages;
	}
	public int getMaxRows() {
		return maxRows;
	}
	public void setMaxRows(int maxRows) {
		this.maxRows = maxRows;
		maxPages=maxRows%pageSize==0?maxRows/pageSize:maxRows/pageSize+1;
	}
	public List getList() {
		return list;
	}
	public void setList(List list) {
		this.list = list;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = "%"+name+"%";
	}
	public String getLianxiren() {
		return lianxiren;
	}
	public void setLianxiren(String lianxiren) {
		this.lianxiren = "%"+lianxiren+"%";
	}
	public Integer getGonghao() {
		return gonghao;
	}
	public void setGonghao(Integer gonghao) {
		this.gonghao = gonghao;
	}
	public Date getChuangjianshijian1() {
		return chuangjianshijian1;
	}
	public void setChuangjianshijian1(Date chuangjianshijian1) {
		this.chuangjianshijian1 = chuangjianshijian1;
	}
	public Date getChuangjianshijian2() {
		return chuangjianshijian2;
	}
	public void setChuangjianshijian2(Date chuangjianshijian2) {
		this.chuangjianshijian2 = chuangjianshijian2;
	}
	
}

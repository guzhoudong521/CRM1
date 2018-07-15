package crm.util;

import java.util.Date;
import java.util.List;

public class QueryParam {
	private int page=1;              //页码
	private int pageSize=5;       //每页条数
	private int maxPages;        //总页数
	private int maxRows;         //总条数
	private List   list; 
	private int gonghao;
	private String name;
	private String lianxiren;
	private Date chuangjianshijian;
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
		this.lianxiren = lianxiren;
	}
	public Date getChuangjianshijian() {
		return chuangjianshijian;
	}
	public void setChuangjianshijian(Date chuangjianshijian) {
		this.chuangjianshijian = chuangjianshijian;
	}
	public int getGonghao() {
		return gonghao;
	}
	public void setGonghao(int gonghao) {
		this.gonghao = gonghao;
	}
}

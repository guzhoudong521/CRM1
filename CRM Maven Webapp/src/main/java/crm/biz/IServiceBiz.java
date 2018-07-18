package crm.biz;

import java.util.List;

import crm.entity.Services;
import crm.util.QueryParam;

public interface IServiceBiz {
	public void addService(Services se);
	public QueryParam getAll(QueryParam par);
	public void allot(Services se);
	public void delete(int id);
	public QueryParam getAllById(QueryParam par);
	public Services getById(int id);
	public void dis(Services ser);
	public QueryParam getAllPro(QueryParam par);
	public void result(Services ser);
	public QueryParam getAllRes(QueryParam par);
}

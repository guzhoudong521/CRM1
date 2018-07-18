package crm.dao;

import java.util.List;

import crm.entity.Services;
import crm.util.QueryParam;

public interface IServiceDao {
	public void addService(Services se);
	public List<Services> getAll(QueryParam par);
	public int getCount(QueryParam par);
	public void allot(Services se);
	public void delete(int id);
	public List<Services> getAllById(QueryParam par);
	public int getCountById(QueryParam par);
	public Services getById(int id);
	public void dis(Services ser);
	public List<Services> getAllPro(QueryParam par);
	public int getCountPro(QueryParam par);
	public void result(Services ser);
	public List<Services> getAllRes(QueryParam par);
	public int getCountRes(QueryParam par);
}

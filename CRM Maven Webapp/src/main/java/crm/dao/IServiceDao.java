package crm.dao;

import java.util.List;

import crm.entity.Services;
import crm.util.QueryParam;

public interface IServiceDao {
	public void addService(Services se);
	public List<Services> getAll(QueryParam par);
	public int getCount(QueryParam par);
	public void allot(Services se);
}

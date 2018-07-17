package crm.biz;

import crm.entity.Services;
import crm.util.QueryParam;

public interface IServiceBiz {
	public void addService(Services se);
	public QueryParam getAll(QueryParam par);
	public void allot(Services se);
}

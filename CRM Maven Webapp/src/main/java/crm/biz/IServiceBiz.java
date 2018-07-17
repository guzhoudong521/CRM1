package crm.biz;

import java.util.List;

import crm.entity.Services;
import crm.util.QueryParam;

public interface IServiceBiz {
	public void addService(Services se);
	public QueryParam getAll(QueryParam par);
}

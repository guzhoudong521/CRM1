package crm.biz;

import java.util.List;

import crm.entity.Stat;
import crm.util.QueryParam;

public interface IStatBiz {

	public List<Stat> getGradeStat();
	
	public List<Stat> getSerType();
	
	public QueryParam getSale(QueryParam q);
}

package crm.biz;

import crm.entity.Custplan;
import crm.util.QueryParam;

public interface ICustplanBiz {
	
	
	public QueryParam getAllByPage(QueryParam q);
	
	public void addPlan(Custplan cus);
	
	public void modPlan(Custplan cus);
	
	public Custplan getById(int id);
	
	
}

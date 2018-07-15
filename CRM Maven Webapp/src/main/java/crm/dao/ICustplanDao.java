package crm.dao;

import java.util.List;

import crm.entity.Custplan;
import crm.util.QueryParam;

public interface ICustplanDao {

	
	public void add(Custplan cus);
	
	public void mod(Custplan cus);
	
	public List<Custplan> getAll(QueryParam q);
	
	public Custplan getById(int id);
	
	public int getCount(QueryParam q);
}

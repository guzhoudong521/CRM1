package crm.dao;

import java.util.List;

import crm.entity.Stat;
import crm.util.QueryParam;

public interface IStatDao {

	
	public List<Stat> getGradeStat();
	
	public List<Stat> getSerType();
	
	public List<Stat> getSale(QueryParam q);
	
	public int getCount();
}

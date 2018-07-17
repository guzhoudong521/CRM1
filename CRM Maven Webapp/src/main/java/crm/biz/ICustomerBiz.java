package crm.biz;

import java.util.List;

import crm.entity.Area;
import crm.entity.Custgrade;
import crm.entity.Customer;
import crm.util.QueryParam;

public interface ICustomerBiz {

	
	public QueryParam getAllByPage(QueryParam q);
	
	public Customer getById(int id);
	
	public void addCust(Customer cus);
	
	public List<Area> getAllArea();
	
	public List<Custgrade> getAllGrade();
}

package crm.dao;

import java.util.List;

import crm.entity.Area;
import crm.entity.Custgrade;
import crm.entity.Customer;
import crm.util.QueryParam;

public interface ICustomerDao {

	
	public List<Customer> getAll(QueryParam q);
	
	public Customer getById(int id);
	
	public int getCount(QueryParam q);
	
	public void addCust(Customer cus);
	
	public List<Area> getAllArea();
	
	public List<Custgrade> getAllGrade();
}

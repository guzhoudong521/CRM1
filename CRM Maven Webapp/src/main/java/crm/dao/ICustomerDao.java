package crm.dao;

import java.util.List;

import crm.entity.Area;
import crm.entity.Contact;
import crm.entity.Custgrade;
import crm.entity.Customer;
import crm.util.QueryParam;

public interface ICustomerDao {
	/*qwewqeq*/
	
	public List<Customer> getAll(QueryParam q);
	
	public Customer getById(int id);
	
	public int getCount(QueryParam q);
	
	public void addCust(Customer cus);
	
	public List<Area> getAllArea();
	
	public List<Custgrade> getAllGrade();
	
	public void modCust(Customer cust);
	
	public List<Contact> getContactById(int id);
	
	public void addContact(Contact con);
}

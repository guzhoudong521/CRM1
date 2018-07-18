package crm.dao;

import java.util.List;

import crm.entity.Area;
import crm.entity.Contact;
import crm.entity.Custgrade;
import crm.entity.Customer;
import crm.entity.Meet;
import crm.util.QueryParam;

public interface ICustomerDao {
	
	
	public List<Customer> getAll(QueryParam q);
	
	public Customer getById(int id);
	
	public int getCount(QueryParam q);
	
	public void addCust(Customer cus);
	
	public List<Area> getAllArea();
	
	public List<Custgrade> getAllGrade();
	
	public void modCust(Customer cust);
	
	/*
	 * 客户联系人
	 * */
	public List<Contact> getContactById(int id);
	
	public void addContact(Contact con);
	
	public void modContact(Contact con);
	
	public Contact getConById(int id);
	
	public void delCon(int id);
	
	/*
	 * 交往记录
	 * */
	
	public List<Meet> getMeetByCustId(QueryParam q);
	
	public int getMeetCount(QueryParam q);
	
	public void addMeet(Meet meet);
	
	public Meet getMeetById(int id);
	
	public void modMeet(Meet meet);
	
	public void delMeet(int id);
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}

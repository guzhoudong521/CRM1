package crm.dao;

import java.util.List;

import crm.entity.OrderDetail;
import crm.entity.Orders;
import crm.util.QueryParam;

public interface IOrderDao {

	
	public List<Orders> getById(QueryParam q);
	
	public int getCount(int id);
	
	public Orders getOrderById(int id);
	
	public long getSumByOrder(int oid);
	
	public List<OrderDetail> getDetailById(QueryParam q);
	
	public int getDetailCount(int oid);
	
	public void addOrder(Orders o); 
	
	
}

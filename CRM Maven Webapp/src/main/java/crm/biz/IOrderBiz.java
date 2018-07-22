package crm.biz;

import java.util.List;

import crm.entity.OrderDetail;
import crm.entity.Orders;
import crm.util.QueryParam;

public interface IOrderBiz {

	
	public QueryParam getOrderByCustI(QueryParam q);
	
	public QueryParam getDetailById(QueryParam q);
	
	public Orders getOrderById(int id);
	
	public long getSumByOrder(int oid);
	
	public void addOrder(Orders o); 
}

package crm.biz;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import crm.dao.IOrderDao;
import crm.entity.Orders;
import crm.util.QueryParam;

@Service
public class OrderBizImpl implements IOrderBiz {

	@Autowired
	private  IOrderDao dao;
	
	
	public QueryParam getOrderByCustI(QueryParam q) {
		// TODO 自动生成的方法存根
		QueryParam qq=new QueryParam();
		qq.setPage(q.getPage());
		qq.setPageSize(q.getPageSize());
		qq.setList(dao.getById(q));
		qq.setMaxRows(dao.getCount(q.getCustid()));				
		return qq;
	}


	public QueryParam getDetailById(QueryParam q) {
		// TODO 自动生成的方法存根
		QueryParam qq=new QueryParam();
		qq.setPage(q.getPage());
		qq.setPageSize(q.getPageSize());
		qq.setList(dao.getDetailById(q));
		qq.setMaxRows(dao.getDetailCount(q.getGonghao()));
		return qq;
	}


	public Orders getOrderById(int id) {
		// TODO 自动生成的方法存根
		return dao.getOrderById(id);
	}


	public long getSumByOrder(int oid) {
		// TODO 自动生成的方法存根
		return dao.getSumByOrder(oid);
	}

}

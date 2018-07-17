package crm.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import crm.dao.ICustomerDao;
import crm.entity.Area;
import crm.entity.Contact;
import crm.entity.Custgrade;
import crm.entity.Customer;
import crm.util.QueryParam;

@Service
public class CustomerBizImpl implements ICustomerBiz {

	@Autowired
	private ICustomerDao dao;
	
	public QueryParam getAllByPage(QueryParam q) {
		// TODO 自动生成的方法存根
		QueryParam qq=new QueryParam();
		qq.setPage(q.getPage());
		qq.setMaxRows(dao.getCount(q));
		qq.setList(dao.getAll(q));
		qq.setPageSize(q.getPageSize());
		
		return qq;
	}

	public Customer getById(int id) {
		// TODO 自动生成的方法存根
		return dao.getById(id);
	}

	public void addCust(Customer cus) {
		// TODO 自动生成的方法存根
		
		dao.addCust(cus);
	}

	public List<Area> getAllArea() {
		// TODO 自动生成的方法存根
		return dao.getAllArea();
	}

	public List<Custgrade> getAllGrade() {
		// TODO 自动生成的方法存根
		return dao.getAllGrade();
	}

	public void modCust(Customer cus) {
		// TODO 自动生成的方法存根
		dao.modCust(cus);
	}

	public void addContact(Contact con) {
		// TODO 自动生成的方法存根
		dao.addContact(con);
	}

}

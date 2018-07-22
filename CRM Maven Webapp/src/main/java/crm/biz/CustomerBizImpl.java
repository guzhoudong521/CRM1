package crm.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import crm.dao.ICustomerDao;
import crm.entity.Area;
import crm.entity.Contact;
import crm.entity.Custgrade;
import crm.entity.Customer;
import crm.entity.Meet;
import crm.util.QueryParam;

@Service
public class CustomerBizImpl implements ICustomerBiz {

	
	@Autowired
	private ICustomerDao dao;
	
	public QueryParam getAllByPage(QueryParam q) {
		// TODO 自动生成的方法存根
		QueryParam qq=new QueryParam();
		qq.setPageSize(q.getPageSize());
		qq.setAreaid(q.getAreaid());		
		qq.setPage(q.getPage());
		qq.setMaxRows(dao.getCount(q));
		qq.setList(dao.getAll(q));
		qq.setName(q.getName());
		qq.setGonghao(q.getGonghao());
		qq.setAreaid(q.getAreaid());
		qq.setGradeid(q.getGradeid());
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

	public void modContact(Contact con) {
		// TODO 自动生成的方法存根
		dao.modContact(con);
	}

	public Contact getConById(int id) {
		// TODO 自动生成的方法存根
		return dao.getConById(id);
	}

	public void delCon(int id) {
		// TODO 自动生成的方法存根
		dao.delCon(id);
	}

	public QueryParam getMeetByCustId(QueryParam q) {
		// TODO 自动生成的方法存根
		QueryParam qq=new QueryParam();
		qq.setPageSize(q.getPageSize());
		qq.setPage(q.getPage());
		qq.setMaxRows(dao.getMeetCount(q));
		qq.setList(dao.getMeetByCustId(q));			
		return qq;
	}

	public void addMeet(Meet meet) {
		// TODO 自动生成的方法存根
		dao.addMeet(meet);
	}

	public Meet getMeetById(int id) {
		// TODO 自动生成的方法存根
		return dao.getMeetById(id);
	}

	public void modMeet(Meet meet) {
		// TODO 自动生成的方法存根
		dao.modMeet(meet);
	}

	public void delMeet(int id) {
		// TODO 自动生成的方法存根
		dao.delMeet(id);
	}

	

}

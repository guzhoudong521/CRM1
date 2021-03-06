package crm.biz;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import crm.dao.ICustplanDao;
import crm.entity.Custplan;
import crm.util.QueryParam;

@Service
public class CustplanBizImpl implements ICustplanBiz {

	@Autowired
	private ICustplanDao dao;
	
	
	public ICustplanDao getDao() {
		return dao;
	}

	public void setDao(ICustplanDao dao) {
		this.dao = dao;
	}

	public QueryParam getAllByPage(QueryParam q) {
		// TODO 自动生成的方法存根
		QueryParam qq=new QueryParam();
		
		qq.setMaxRows(dao.getCount(q));
		qq.setPage(q.getPage());
		qq.setPageSize(q.getPageSize());
		qq.setList(dao.getAll(q));	
		qq.setName(q.getName());
		qq.setLianxiren(q.getLianxiren());
		qq.setZhuangtai(q.getZhuangtai());
		
		return qq;
	}

	public void addPlan(Custplan cus) {
		// TODO 自动生成的方法存根
		dao.add(cus);
	}

	public void modPlan(Custplan cus) {
		// TODO 自动生成的方法存根
		dao.mod(cus);
	}

	public Custplan getById(int id) {
		// TODO 自动生成的方法存根
		return dao.getById(id);
	}

	
}

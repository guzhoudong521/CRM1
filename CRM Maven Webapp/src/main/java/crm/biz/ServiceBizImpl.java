package crm.biz;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import crm.dao.IServiceDao;
import crm.entity.Services;
import crm.util.QueryParam;
@Service
public class ServiceBizImpl implements IServiceBiz {
    @Autowired
    private IServiceDao dao;
      
	public IServiceDao getDao() {
		return dao;
	}


	public void setDao(IServiceDao dao) {
		this.dao = dao;
	}


	public void addService(Services se) {
		// TODO 自动生成的方法存根
		dao.addService(se);
	}


	public QueryParam getAll(QueryParam par) {
		// TODO 自动生成的方法存根
		QueryParam q=new QueryParam();
		q.setPage(par.getPage());
		q.setName(par.getName());
		q.setServicetyle(par.getServicetyle());
		q.setChuangjianshijian1(par.getChuangjianshijian1());
		q.setMaxRows(dao.getCount(par));
		q.setList(dao.getAll(par));
		return q;
	}

}

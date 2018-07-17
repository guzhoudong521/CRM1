package crm.biz;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import crm.dao.IServiceDao;
import crm.dao.IUsersDao;
import crm.entity.Services;
import crm.util.QueryParam;
@Service
public class ServiceBizImpl implements IServiceBiz {
    @Autowired
    private IServiceDao dao;
    @Autowired
    private IUsersDao udao;
    
    
	public IUsersDao getUdao() {
		return udao;
	}


	public void setUdao(IUsersDao udao) {
		this.udao = udao;
	}


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


	public void allot(Services se) {
		// TODO 自动生成的方法存根
		dao.allot(se);
	}

}

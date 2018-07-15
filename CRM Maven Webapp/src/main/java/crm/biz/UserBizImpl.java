package crm.biz;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import crm.dao.IUsersDao;
import crm.util.QueryParam;
@Service
public class UserBizImpl implements IUserBiz {
   @Autowired
   private IUsersDao dao;
   
	public IUsersDao getDao() {
		return dao;
	}


	public void setDao(IUsersDao dao) {
		this.dao = dao;
	}
	
	   
	public QueryParam getAllUser(QueryParam par) {
			// TODO 自动生成的方法存根
		QueryParam qq=new QueryParam();
		qq.setPage(par.getPage());
		qq.setMaxRows(dao.getCount(par));
		qq.setList(dao.getAllUser(par));
	    return qq;
    }
}

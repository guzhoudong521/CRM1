package crm.biz;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import crm.dao.IUsersDao;
import crm.entity.Users;
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
		qq.setMaxRows(dao.getCount(par.getName(),par.getGonghao()));
		qq.setList(dao.getAllUser(par));
		qq.setName(par.getName());
		qq.setGonghao(par.getGonghao());
	    return qq;
    }


	public Users login(String name, String pwd) {
		// TODO 自动生成的方法存根
		return dao.login(name, pwd);
	}


	public void addUser(Users us) {
		// TODO 自动生成的方法存根
		dao.addUser(us);
	}


	public void delUser(int id) {
		// TODO 自动生成的方法存根
		dao.delUser(id);
	}


	public Users getUserById(int id) {
		// TODO 自动生成的方法存根
		return dao.getUserById(id);
	}


	public void modUser(Users us) {
		// TODO 自动生成的方法存根
		dao.modUser(us);
	}
}

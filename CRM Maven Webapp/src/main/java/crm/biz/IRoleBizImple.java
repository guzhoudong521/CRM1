package crm.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import crm.dao.IRoleDao;
import crm.entity.Role;
@Service
public class IRoleBizImple implements IRoleBiz{
    @Autowired
    private IRoleDao dao;
    
	
	public IRoleDao getDao() {
		return dao;
	}


	public void setDao(IRoleDao dao) {
		this.dao = dao;
	}


	public List<Role> getAllRole() {
		// TODO 自动生成的方法存根
		return dao.getAllRole();
	}

}

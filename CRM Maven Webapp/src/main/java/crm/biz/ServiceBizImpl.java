package crm.biz;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import crm.dao.IServiceDao;
import crm.entity.Services;
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

}

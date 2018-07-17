package test;

import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import crm.biz.IUserBiz;
import crm.dao.IServiceDao;
import crm.entity.Services;
import crm.util.QueryParam;

public class TestService {

	@Test
	public void xxcx(){
		ApplicationContext cont=new ClassPathXmlApplicationContext("applicationContext.xml");
		IServiceDao biz=cont.getBean(IServiceDao.class);
		QueryParam qq=new QueryParam();
		List list=biz.getAll(qq);
		System.out.println(qq.getPage());
		System.out.println(((Services)list.get(0)).getCustomer());
	}
}

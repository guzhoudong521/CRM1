package test;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import crm.biz.IUserBiz;
import crm.biz.UserBizImpl;
import crm.util.QueryParam;

public class TestUser {

	@Test
	public void getAll(){
		ApplicationContext cont=new ClassPathXmlApplicationContext("applicationContext.xml");
		IUserBiz biz=cont.getBean(IUserBiz.class);
		QueryParam q=new QueryParam();
		q.setPage(1);
		QueryParam qq=biz.getAllUser(q);
		System.out.println(qq.getPage());
	}
}

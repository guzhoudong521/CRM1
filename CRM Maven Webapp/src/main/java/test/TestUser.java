package test;

import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import crm.biz.IUserBiz;
import crm.biz.UserBizImpl;
import crm.dao.IUsersDao;
import crm.entity.Users;
import crm.util.QueryParam;

public class TestUser {

	@Test
	public void getAll(){
		ApplicationContext cont=new ClassPathXmlApplicationContext("applicationContext.xml");
		IUsersDao biz=cont.getBean(IUsersDao.class);
		/*QueryParam q=new QueryParam();
		q.setPage(1);
		QueryParam qq=biz.getAllUser(q);
		System.out.println(qq.getPage());
		List<Users> list= qq.getList();
		for(Users s:list){
			System.out.println(s.getUname());
		}*/
		/*Users us=biz.getUserById(1043);
		us.setPwd("123aaa");
		biz.modUser(us);
		System.out.println(us.getUname());*/
		QueryParam q=new QueryParam();
		List<Users> list=biz.getAllUser(q);
		System.out.println(((Users)list.get(0)).getUserid());
	}
}

package test;

import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;


import crm.biz.CustplanBizImpl;
import crm.biz.ICustplanBiz;
import crm.dao.ICustomerDao;
import crm.entity.Area;
import crm.entity.Contact;
import crm.entity.Custgrade;
import crm.entity.Customer;
import crm.entity.Custplan;
import crm.entity.Users;
import crm.util.QueryParam;

public class Testplan {

	@Test
	public void aaaa(){
		ApplicationContext con=new ClassPathXmlApplicationContext("applicationContext.xml");
		ICustplanBiz biz=con.getBean(ICustplanBiz.class);
		
		/*QueryParam q=new QueryParam();
		q.setPage(1);
		//q.setPageSize(5);
		q.setName("睿");
		QueryParam qq=biz.getAllByPage(q);
		List<Custplan> list=qq.getList();
		for(Custplan c:list){
			
			System.out.println(c.getGongsi());
		}*/
		
		/*Custplan c=new Custplan();
		Users u=new Users();
		u.setUserid(1003);
		c.setChuangjianren(u);
		c.setGongsi("形成");
		c.setGaiyao("wu");
		c.setLianxiren("Wang");
		c.setMiaoshu("无");
		c.setLaiyuan("路标遇到的");
		c.setJilv("80%");
		Users u2=new Users();
		u2.setUserid(1004);
		c.setZhixingren(u2);
		c.setDianhua("1265546");
		c.setChuangjianshijian(new Date());
		c.setZhaungtai("未开发");
		biz.addPlan(c);*/
		
		/*Custplan c=biz.getById(1040);
		System.out.println(c.getDianhua());
		Users u=new Users();
		u.setUserid(1003);
		c.setZhixingren(u);
		c.setZhaungtai("开发中");
		biz.modPlan(c);
		*/
		
		Custplan cust=biz.getById(1080);
		
		System.out.println(cust.getZhixingren().getUserid());
		
		ICustomerDao dao=con.getBean(ICustomerDao.class);
		List<Custgrade> list=dao.getAllGrade();
		for(Custgrade a:list){
			
			System.out.println(a.getGid()+","+a.getGname());
		}
		/*Customer cus=new Customer();
			Area a=new Area();
			a.setAreaid(1016);
			cus.setArea(a);
			
			Users u=new Users();
			u.setUserid(1060);
			cus.setMgr(u);
		
			Custgrade g=new Custgrade();
			g.setGid(1023);
			cus.setCustgrade(g);
		cus.setCname("xxx");
		dao.addCust(cus);*/
		/*QueryParam q=new QueryParam();
		List<Customer> list=dao.getAll(q);
		
		for(Customer c:list){
			
			System.out.println(c.getCustgrade().getGname());
			
			
		}*/
		
		/*Customer cus=dao.getById(1028);
		System.out.println("***"+cus.getMgr().getUname());
		System.out.println(cus.getCname());
		List<Contact> list=cus.getList();
		for(Contact c:list){
			
			System.out.println(c.getWorkphone());
		}
		QueryParam q=new QueryParam();
		System.out.println(dao.getCount(q));*/
		
		
		
		
		
		
		
		
	}
}

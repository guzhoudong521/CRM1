package test;

import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;


import crm.biz.CustplanBizImpl;
import crm.biz.ICustomerBiz;
import crm.biz.ICustplanBiz;
import crm.biz.IOrderBiz;
import crm.biz.IProductBiz;
import crm.biz.IStatBiz;
import crm.dao.ICustomerDao;
import crm.entity.Area;
import crm.entity.Contact;
import crm.entity.Custgrade;
import crm.entity.Customer;
import crm.entity.Custplan;
import crm.entity.Kucun;
import crm.entity.Meet;
import crm.entity.OrderDetail;
import crm.entity.Orders;
import crm.entity.Product;
import crm.entity.Stat;
import crm.entity.Users;
import crm.util.QueryParam;

public class Testplan {

	@Test
	public void aaaa(){
		ApplicationContext con=new ClassPathXmlApplicationContext("applicationContext.xml");
		ICustplanBiz biz=con.getBean(ICustplanBiz.class);
		IStatBiz sbiz=con.getBean(IStatBiz.class);
		ICustomerDao dao=con.getBean(ICustomerDao.class);
		IOrderBiz obiz=con.getBean(IOrderBiz.class);
		IProductBiz pbiz=con.getBean(IProductBiz.class);
		
		
		/*QueryParam q=new QueryParam();
		q.setCustid(1100);
		QueryParam qq=obiz.getOrderByCustI(q);
		List<Orders> list=qq.getList();
		for(Orders o:list){
			
			System.out.println(o.getAddress());
		}
		*/
		Orders o=obiz.getOrderById(4338);
		System.out.println(o.getSumprice()+","+o.getAddress());
		
		
		/*Product pp= pbiz.getBuId(1137);
		
		System.out.println(pp.getPid()+"."+pp.getPrice()+","+pp.getPname());*/
		/*QueryParam q=new QueryParam();
		QueryParam qq=pbiz.getAllPro(q);
		List<Product> list=qq.getList();
		
		for(Product p:list){
			
			System.out.println(p.getPname()+","+p.getPrice()+","+p.getPdesc()+","+p.getPgrade()+","+p.getPtype());
		
		}
		*/
		/*List<String> list=pbiz.getAllType();
		for(String s:list){
			
			System.out.println(s);
		}*/
		/*QueryParam q=new QueryParam();
		QueryParam qq=pbiz.getAllKucun(q);
		List<Kucun> list=qq.getList();
		for(Kucun k:list){
				
		System.out.println(k.getR());
		}*/
		
		
		
		
		
		/*List<Stat> list= sbiz.getGradeStat();
		for(Stat s:list){
			System.out.println(s.getGradename()+","+s.getSum());
		}*/
		
		/*List<Stat> list= sbiz.getSerType();
		for(Stat s:list){
			System.out.println(s.getId()+","+s.getSertype()+","+s.getSum());
		}*/
		/*QueryParam q=new QueryParam();
		q.setPageSize(10);
		QueryParam qq=sbiz.getSale(q);
		List<Stat> list= qq.getList();
		for(Stat s:list){
			System.out.println(s.getId()+","+s.getName()+","+s.getSum());
		}*/
		
		
		/*QueryParam q=new QueryParam();
		q.setCustid(1086);
		QueryParam  qq=obiz.getOrderByCustI(q);
		List<Orders> list=qq.getList();
		for(Orders o:list){
			
			System.out.println(o.getOid());
		}*/
		/*Orders o=obiz.getOrderById(1142);
		System.out.println(o.getAddress());*/
		
		/*QueryParam q=new QueryParam();
		q.setGonghao(1142);
		QueryParam qq=obiz.getDetailById(q);
		List<OrderDetail> list=qq.getList();
		for(OrderDetail o:list){
			System.out.println(o.getPro().getPname());
		}*/
		
		
		
	/*	Meet m=new Meet();
		Customer c=new Customer();
		c.setCustid(1086);
		m.setCust(c);
		m.setMeetaddress("如家");
		m.setMeetinfo(".....");
		m.setMeetnotes("...");
		m.setSummary("...");
		dao.addMeet(m);*/
	/*	
		Meet m=dao.getMeetById(1103);
		System.out.println(m.getMeetaddress());*/
		
		
		
		/*QueryParam q=new QueryParam();
		q.setCustid(1086);
		
		List<Meet> list=dao.getMeetByCustId(q);
		
		for(Meet m:list){
			System.out.println("**************************************************************");
			
			System.out.println(m.getCust().getCustid());
		}*/
		
		/*Custplan cust=biz.getById(1036);
		System.out.println("**************************************************************");
		System.out.println(cust.getZhixingren().getUname()+","+cust.getChuangjianren().getUname());
		*//*QueryParam q=new QueryParam();
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
		
		/*Custplan cust=biz.getById(1080);
		
		System.out.println(cust.getZhixingren().getUserid());*/
		
		ICustomerBiz bizx=con.getBean(ICustomerBiz.class);
		
		/*Contact cont=new Contact();
		cont.setContcatid(1083);
		cont.setConame("王先生");
		bizx.modContact(cont);*/
		/*Contact cont= bizx.getConById(1083);
		System.out.println(cont.getConame());*/
		/*Contact cont=new Contact();
		cont.setCojob("清洁工");
		cont.setConame("李女士");
		cont.setCophone("13556333546");
		cont.setCosex("女");
		Customer c=new Customer();
		c.setCustid(1028);
		cont.setCustomer(c);
		cont.setWorkphone("030-5556-8885");
		cont.setNotes("无");
		bizx.addContact(cont);*/
		
		/*Customer c=bizx.getById(1087);
		c.setCname("星辰互联5");
		bizx.modCust(c);
		System.out.println(c.getCname());*/
		/*List<Custgrade> list=dao.getAllGrade();
		for(Custgrade a:list){
			
			System.out.println(a.getGid()+","+a.getGname());
		}*/
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

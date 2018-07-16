package test;

import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import crm.biz.IRoleBiz;
import crm.entity.Role;

public class TestRole {

	@Test
	public void xxx(){
		ApplicationContext cont=new ClassPathXmlApplicationContext("applicationContext.xml");
		IRoleBiz biz=cont.getBean(IRoleBiz.class);
		List<Role> list=biz.getAllRole();
		for(Role r:list){
			System.out.println(r.getRoleid()+","+r.getRolename());
		}
	}
}

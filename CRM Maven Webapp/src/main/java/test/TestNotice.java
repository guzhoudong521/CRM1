package test;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import crm.biz.INoticeBiz;
import crm.dao.IServiceDao;
import crm.entity.Notice;

public class TestNotice {
	@Test
	public void xx(){
		ApplicationContext cont=new ClassPathXmlApplicationContext("applicationContext.xml");
		INoticeBiz biz=cont.getBean(INoticeBiz.class);
		Notice ne=new Notice();
		
		
	}
}

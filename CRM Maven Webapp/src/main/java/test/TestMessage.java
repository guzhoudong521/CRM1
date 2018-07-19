package test;

import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import crm.biz.IMessageBiz;
import crm.dao.IMessageDao;
import crm.entity.Message;
import crm.entity.Users;
import crm.util.QueryParam;

public class TestMessage {
	@Test
	public void xx(){
		ApplicationContext ccont=new ClassPathXmlApplicationContext("applicationContext.xml");
		IMessageDao biz=ccont.getBean(IMessageDao.class);
		/*Message newMess=new Message();
		newMess.setTitle("你好");
		newMess.setContent("我是新来的员工");
		Users us=new Users();
		us.setUserid(1043);
		newMess.setSuser(us);
		Users us1=new Users();
		us1.setUserid(1044);
		newMess.setRuser(us1);
		newMess.setCreatetime(new Date());
		biz.addMess(newMess);*/
		/*QueryParam par=new QueryParam();
		par.setCustid(1044);
		List<Message> list=biz.getSendMessageById(par);
		List<Message> list=parx.getList();
		for(Message m:list){
			System.out.println(m.getTitle()+","+m.getContent());
		}*/
		biz.delMess(1102);
	}
}

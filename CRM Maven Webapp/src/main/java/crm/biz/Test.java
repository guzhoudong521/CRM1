package crm.biz;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import crm.entity.Custplan;
import crm.util.QueryParam;

public class Test {

	public static void main(String[] args) {
		// TODO 自动生成的方法存根

		ApplicationContext con=new ClassPathXmlApplicationContext("applicationContext.xml");
		ICustplanBiz biz=con.getBean(ICustplanBiz.class);
		
		QueryParam q=new QueryParam();
		q.setPage(1);
		q.setPageSize(5);
		q.setName("睿");
		QueryParam qq=biz.getAllByPage(q);
		List<Custplan> list=qq.getList();
		for(Custplan c:list){
			
			System.out.println(c.getGongsi());
		}
	}

}

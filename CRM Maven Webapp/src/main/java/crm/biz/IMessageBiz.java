package crm.biz;

import crm.entity.Message;
import crm.util.QueryParam;

public interface IMessageBiz {
	public  void addMess(Message mess);
	public  void delMess(int id);
	public  QueryParam getRecevieMessage(QueryParam par);
	public  QueryParam getSendMessage(QueryParam par);
	public void changeMessageStatuts(int id);
}

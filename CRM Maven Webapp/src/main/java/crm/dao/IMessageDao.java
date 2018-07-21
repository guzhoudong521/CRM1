package crm.dao;

import java.util.List;

import crm.entity.Message;
import crm.util.QueryParam;

public interface IMessageDao {
	public void addMess(Message mess);
	public void delMess(int id);
	public List<Message> getReceiveMessageById(QueryParam par);
	public List<Message> getSendMessageById(QueryParam par);
	public int getReceiveCount(QueryParam par);
	public int getSendCount(QueryParam par);
	public void changeMessageStatuts(int id);
	public Message getById(int id);
	public int getMessageNum(int id);
}

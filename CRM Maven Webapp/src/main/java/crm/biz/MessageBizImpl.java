package crm.biz;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import crm.dao.IMessageDao;
import crm.entity.Message;
import crm.util.QueryParam;
@Service
public class MessageBizImpl implements IMessageBiz {
    @Autowired
    private IMessageDao dao;
   
	public IMessageDao getDao() {
		return dao;
	}

	public void setDao(IMessageDao dao) {
		this.dao = dao;
	}

	public void addMess(Message mess) {
		// TODO 自动生成的方法存根
        dao.addMess(mess);
	}

	public void delMess(int id) {
		// TODO 自动生成的方法存根
		dao.delMess(id);
	}

	public QueryParam getRecevieMessage(QueryParam par) {
		// TODO 自动生成的方法存根
		QueryParam qq=new QueryParam();
		qq.setPage(par.getPage());
		qq.setMaxRows(dao.getReceiveCount(par));
		qq.setList(dao.getReceiveMessageById(par));
		return qq;
	}

	public QueryParam getSendMessage(QueryParam par) {
		// TODO 自动生成的方法存根
		QueryParam qq=new QueryParam();
		qq.setPage(par.getPage());
		qq.setMaxRows(dao.getSendCount(par));
		qq.setList(dao.getSendMessageById(par));
		return qq;
	}

	public void changeMessageStatuts(int id) {
		// TODO 自动生成的方法存根
		dao.changeMessageStatuts(id);
	}

	public Message getById(int id) {
		// TODO 自动生成的方法存根
		return dao.getById(id);
	}

	public int getMessageNum(int id) {
		// TODO 自动生成的方法存根
		return dao.getMessageNum(id);
	}

}

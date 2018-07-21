package crm.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import crm.dao.INoticeDao;
import crm.dao.IUsersDao;
import crm.entity.Message;
import crm.entity.Notice;
import crm.entity.Users;
import crm.util.QueryParam;
@Service
public class NoticeBizImpl implements INoticeBiz {
    @Autowired
    private INoticeDao dao;
    @Autowired
    private IUsersDao udao;
    @Autowired
    private IMessageBiz biz;
    
    
	public IMessageBiz getBiz() {
		return biz;
	}

	public void setBiz(IMessageBiz biz) {
		this.biz = biz;
	}

	public IUsersDao getUdao() {
		return udao;
	}

	public void setUdao(IUsersDao udao) {
		this.udao = udao;
	}

	public INoticeDao getDao() {
		return dao;
	}

	public void setDao(INoticeDao dao) {
		this.dao = dao;
	}

	public QueryParam getAll(QueryParam qp) {
		// TODO 自动生成的方法存根
		QueryParam par=new QueryParam();
		par.setPage(qp.getPage());
		par.setMaxRows(dao.getCount());
		par.setList(dao.getAll(qp.getPage(), qp.getPageSize()));
		return par;
	}

	public void addNotice(Notice ne) {
		// TODO 自动生成的方法存根
		dao.addNotice(ne);
		QueryParam qq=new QueryParam();
		qq.setMaxPages(99999);
		List<Users> list=udao.getAllUser(qq);
		Message mess=new Message();
		mess.setTitle(ne.getTitle());
		mess.setContent(ne.getContent());
		mess.setCreatetime(ne.getCreatetime());
		mess.setSuser(ne.getCreateuser());
		for(Users us:list){
			mess.setRuser(us);
			biz.addMess(mess);
		}
	}

	public void delNotice(int id) {
		// TODO 自动生成的方法存根
		dao.delNotice(id);
	}

	public void modNotice(Notice ne) {
		// TODO 自动生成的方法存根
		dao.modNotice(ne);
	}

}

package crm.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import crm.dao.IStatDao;
import crm.entity.Stat;
import crm.util.QueryParam;
@Service
public class StatBizImpl implements IStatBiz {

	@Autowired
	private IStatDao dao;
	
	public List<Stat> getGradeStat() {
		// TODO 自动生成的方法存根
		
		return dao.getGradeStat();
	}

	public List<Stat> getSerType() {
		// TODO 自动生成的方法存根
		return dao.getSerType();
	}

	public QueryParam getSale(QueryParam q) {
		// TODO 自动生成的方法存根
		QueryParam qq=new QueryParam();
		qq.setPage(q.getPage());
		qq.setPageSize(q.getPageSize());
		qq.setMaxRows(dao.getCount());
		qq.setList(dao.getSale(q));
		return qq;
	}

}

package crm.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import crm.dao.IProductDao;
import crm.entity.Warehouse;
import crm.util.QueryParam;

@Service
public class ProductBizImpl implements IProductBiz {

	@Autowired
	private IProductDao dao;
	
	public QueryParam getAllPro(QueryParam q) {
		// TODO 自动生成的方法存根
		QueryParam qq=new QueryParam();
		qq.setPage(q.getPage());
		qq.setPageSize(q.getPageSize());
		qq.setList(dao.getAllPro(q));
		qq.setMaxRows(dao.getCount(q));
		
		return qq;
	}

	public List<String> getAllType() {
		// TODO 自动生成的方法存根
		return dao.getAllType();
	}

	public List<String> getAllGrade() {
		// TODO 自动生成的方法存根
		return dao.getAllGrade();
	}

	public QueryParam getAllKucun(QueryParam q) {
		// TODO 自动生成的方法存根
		
		QueryParam qq=new QueryParam();
		qq.setPage(q.getPage());
		qq.setPageSize(q.getPageSize());
		qq.setList(dao.getAllKucun(q));
		qq.setMaxRows(dao.getKucunCount(q));
				
		return qq;
	}

	public List<Warehouse> getAllCangKu() {
		// TODO 自动生成的方法存根
		return dao.getAllCangKu();
	}

}

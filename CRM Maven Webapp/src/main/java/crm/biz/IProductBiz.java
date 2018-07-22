package crm.biz;

import java.util.List;

import crm.entity.Kucun;
import crm.entity.Product;
import crm.entity.Warehouse;
import crm.util.QueryParam;

public interface IProductBiz {

	
	public QueryParam getAllPro(QueryParam q);
	
	public List<String> getAllType();
	
	public List<String> getAllGrade();
	
	public QueryParam getAllKucun(QueryParam q);
	
	public List<Warehouse> getAllCangKu();
	
	public Product getBuId(int id);
}

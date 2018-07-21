package crm.dao;

import java.util.List;

import crm.entity.Kucun;
import crm.entity.Product;
import crm.entity.Warehouse;
import crm.util.QueryParam;

public interface IProductDao {

	
	public List<Product> getAllPro(QueryParam q);
	
	public int getCount(QueryParam q);
	
	public List<String> getAllType();
	
	public List<String> getAllGrade();
	
	public List<Kucun> getAllKucun(QueryParam q);
	
	public int getKucunCount(QueryParam q);
	
	public List<Warehouse> getAllCangKu();
	
}

package crm.biz;

import crm.entity.Users;
import crm.util.QueryParam;

public interface IUserBiz {
	public QueryParam getAllUser(QueryParam par);
	public Users login(String name,String pwd);
	public void addUser(Users us);
	public void delUser(int id);
	public Users getUserById(int id);
	public void modUser(Users us);
}

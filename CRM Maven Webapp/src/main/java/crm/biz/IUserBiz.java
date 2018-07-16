package crm.biz;

import crm.entity.Users;
import crm.util.QueryParam;

public interface IUserBiz {
	public QueryParam getAllUser(QueryParam par);
	public Users login(String name,String pwd);
}

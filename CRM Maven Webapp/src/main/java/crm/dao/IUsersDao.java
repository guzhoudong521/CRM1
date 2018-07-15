package crm.dao;

import java.util.List;

import crm.entity.Users;
import crm.util.QueryParam;

public interface IUsersDao {
	/*123*/
	public List<Users> getAllUser(QueryParam par);
	public int getCount(QueryParam par);
}

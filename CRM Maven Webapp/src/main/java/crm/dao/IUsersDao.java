package crm.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import crm.entity.Users;
import crm.util.QueryParam;

public interface IUsersDao {
	public List<Users> getAllUser(QueryParam par);
	public int getCount(@Param("name")String name,@Param("gonghao")Integer gonghao);
	public Users login(String name,String pwd);
	public void addUser(Users us);
}

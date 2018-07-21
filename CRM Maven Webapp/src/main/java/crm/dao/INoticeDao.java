package crm.dao;

import java.util.List;

import crm.entity.Notice;
import crm.util.QueryParam;

public interface INoticeDao {

	public List<Notice> getAll(QueryParam par);
	public int getCount();
	public void addNotice(Notice ne);
	public void delNotice(int id);
	public void modNotice(Notice ne);
}

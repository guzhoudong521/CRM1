package crm.dao;

import java.util.List;

import crm.entity.Notice;

public interface INoticeDao {

	public List<Notice> getAll(int page,int pageSize);
	public int getCount();
	public void addNotice(Notice ne);
	public void delNotice(int id);
	public void modNotice(Notice ne);
}

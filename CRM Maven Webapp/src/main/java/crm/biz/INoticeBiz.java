package crm.biz;

import crm.entity.Notice;
import crm.util.QueryParam;

public interface INoticeBiz {
	public QueryParam getAll(QueryParam qp);
	public void addNotice(Notice ne);
	public void delNotice(int id);
	public void modNotice(Notice ne);
}

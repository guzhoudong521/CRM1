package crm.web;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import crm.biz.INoticeBiz;
import crm.entity.Notice;
import crm.entity.Users;
import crm.util.QueryParam;

@Controller
@RequestMapping("/notice")
public class NoticeAction {
	@Autowired
	private INoticeBiz biz;

	public INoticeBiz getBiz() {
		return biz;
	}

	public void setBiz(INoticeBiz biz) {
		this.biz = biz;
	}
	
	@RequestMapping("/add")
	public String addNotice(Notice ne,HttpSession sess){
		ne.setCreatetime(new Date());
		ne.setCreateuser((Users)sess.getAttribute("curruser"));
		biz.addNotice(ne);
		return "redirect:getAll.action";
	}
	
	@RequestMapping("/del")
	public String delNotice(int id){
		biz.delNotice(id);
		return "redirect:getAll.action";
	}
	
	@RequestMapping("/getAll")
	public ModelAndView getAll(QueryParam pp,ModelAndView mm){
		mm.addObject("par", biz.getAll(pp));
		mm.setViewName("");
		return mm;
	}
}

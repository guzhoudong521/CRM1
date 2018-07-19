package crm.web;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import crm.biz.IMessageBiz;
import crm.entity.Message;
import crm.entity.Users;
import crm.util.QueryParam;

@Controller
@RequestMapping("/message")
public class MessageAction {
	@Autowired
	private IMessageBiz biz;

	public IMessageBiz getBiz() {
		return biz;
	}

	public void setBiz(IMessageBiz biz) {
		this.biz = biz;
	}
	@RequestMapping("/add")
	public String addMess(Message mess){
		biz.addMess(mess);
		return "";
	}
	@RequestMapping("/getReMessage")
	public ModelAndView getReMessage(QueryParam pa,ModelAndView mm,HttpSession sess){
		Users us=(Users)sess.getAttribute("curruser");
		pa.setCustid(us.getUserid());
		QueryParam par=biz.getRecevieMessage(pa);
		mm.addObject("par", par);
		mm.setViewName("crm_message/remessage_list");
		return mm;
	}
	@RequestMapping("/getSdMessage")
	public ModelAndView getSdMessage(QueryParam pa,ModelAndView mm,HttpSession sess){
		Users us=(Users)sess.getAttribute("curruser");
		pa.setCustid(us.getUserid());
		QueryParam par=biz.getSendMessage(pa);
		mm.addObject("par", par);
		mm.setViewName("");
		return mm;
	}
	@RequestMapping("/changeMessage")
	public String changeMessage(int id){
		biz.changeMessageStatuts(id);
		return "";
	}
}

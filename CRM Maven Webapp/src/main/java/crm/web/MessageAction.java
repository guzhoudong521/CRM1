package crm.web;

import java.util.Date;

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
	public String addMess(Message mess,HttpSession sess){
		Users us=(Users)sess.getAttribute("curruser");
		mess.setSuser(us);
		mess.setCreatetime(new Date());
		biz.addMess(mess);
	//	return "crm_message/add_message";
		return "redirect:getSdMessage.action";
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
		mm.setViewName("crm_message/semessage_list");
		return mm;
	}
	@RequestMapping("/changeMessage")
	public String changeMessage(int id){
		biz.changeMessageStatuts(id);
		return "";
	}
	@RequestMapping("/del1")
	public String del1(int id){
		biz.delMess(id);
		return "redirect:getReMessage.action";
	}
	@RequestMapping("/del2")
	public String del2(int id){
		biz.delMess(id);
		return "redirect:getSdMessage.action";
	}
	@RequestMapping("/getById")
	public ModelAndView getById(int id,ModelAndView mm,HttpSession sess){
		Message me=biz.getById(id);
		biz.changeMessageStatuts(id);
		mm.addObject("mess", me);
		mm.setViewName("crm_message/recevie_message");
		return mm;
	}
	@RequestMapping("/getById2")
	public ModelAndView getById2(int id,ModelAndView mm,HttpSession sess){
		Message me=biz.getById(id);
		mm.addObject("mess", me);
		mm.setViewName("crm_message/message");
		return mm;
	}
}

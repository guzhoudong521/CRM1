package crm.web;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import crm.biz.IUserBiz;
import crm.entity.Users;
import crm.util.QueryParam;

@Controller
@RequestMapping("/us")
public class UsersAction {
	@Autowired
	private IUserBiz biz;

	public IUserBiz getBiz() {
		return biz;
	}

	public void setBiz(IUserBiz biz) {
		this.biz = biz;
	}
	
	@RequestMapping("/getAll")
	public String getAll(QueryParam par,Model mav){
		QueryParam p=biz.getAllUser(par);
        mav.addAttribute("par", p);
		return "../crm_sale/opp/list";
	}
	
	@RequestMapping("/login")
	public String login(String uname,String pwd,HttpSession session){
		System.out.println(uname+","+pwd);
		Users us=biz.login(uname, pwd);
		System.out.println(us.getUname()+"**********************");
		if(us!=null){
			session.setAttribute("curruser", us);
			return "redirect:../index.jsp";
		}else{
			return "../login";	
		}
	}
	@RequestMapping("/exit")
	public String exit(HttpSession session){
		session.removeAttribute("curruser");
		return "redirect:../login";
	}
	
	@RequestMapping("/addUser")
	public String addUser(Users us){
		biz.addUser(us);
		return "redirect:getAll.action";
	}
}

package crm.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import crm.biz.IUserBiz;
import crm.entity.Users;
import crm.util.QueryParam;

@Controller
@RequestMapping("/us")
public class UsersAction {
	@Autowired
	private IUserBiz biz;
/*123*/
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
		return "crm_sale/opp/listx";
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
			return "login";	
		}
	}
	@RequestMapping("/exit")
	public String exit(HttpSession session){
		session.removeAttribute("curruser");
		return "redirect:/login";
	}
	
	@RequestMapping("/addUser")
	public String addUser(Users us){
		biz.addUser(us);
		return "redirect:getAll.action";
	}
	
	@RequestMapping("/delUser")
	public String delUser(int id){
		biz.delUser(id);
		return "redirect:getAll.action";
	}
	
	@RequestMapping("/getById")
	public String getById(int id,Model mm){
		Users us=biz.getUserById(id);
		mm.addAttribute("us", us);
		return "crm_sale/opp/modUser";
	}
	
	@RequestMapping("/modUser")
	public String modUser(Users us){
		biz.modUser(us);
		return "redirect:getAll.action";
	}
	
	@RequestMapping(value="/ajaxlist")
	@ResponseBody
	public List<Users> getAllAjax(){
		QueryParam q=new QueryParam();
		q.setPageSize(1000);
		QueryParam qq=biz.getAllUser(q);	
		return qq.getList();
	}
	
	
	
	
	
	
	
	
}

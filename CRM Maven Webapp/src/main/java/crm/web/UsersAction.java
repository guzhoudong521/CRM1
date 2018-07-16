package crm.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import crm.biz.IUserBiz;
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
		System.out.println(par.getName());
		QueryParam p=biz.getAllUser(par);
        mav.addAttribute("par", p);
		return "../crm_sale/opp/list";
	}
  	
}

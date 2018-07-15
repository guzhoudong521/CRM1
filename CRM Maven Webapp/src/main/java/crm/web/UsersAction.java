package crm.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
	public ModelAndView getAll(QueryParam par,ModelAndView mav){
		QueryParam p=biz.getAllUser(par);
		mav.addObject("par", p);
		mav.setViewName("index");
		return mav;
	}
  	
}

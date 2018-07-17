package crm.web;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import crm.biz.IServiceBiz;
import crm.entity.Services;
import crm.entity.Users;
import crm.util.QueryParam;

@Controller
@RequestMapping("/ser")
public class ServiceAction {
	@Autowired
	private IServiceBiz biz;

	public IServiceBiz getBiz() {
		return biz;
	}

	public void setBiz(IServiceBiz biz) {
		this.biz = biz;
	}
	//添加服务
	@RequestMapping("/add")
	public String addService(Services se,HttpSession session){
		se.setCreatetime(new Date());
		se.setCreateuser((Users)session.getAttribute("curruser"));
		biz.addService(se);
		return "crm_service/add";
	}
	//列表服务
	@RequestMapping("/getAll")
	public ModelAndView getAll(QueryParam par,ModelAndView mm){
		if(par.getChuangjianshijian1()!=null)
		{
			Date createtime=par.getChuangjianshijian1();
			
		}
		return mm;
	}
}

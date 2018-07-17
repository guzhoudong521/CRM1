package crm.web;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import crm.biz.IServiceBiz;
import crm.entity.Services;
import crm.entity.Users;

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
	@RequestMapping("/add")
	public String addService(Services se,HttpSession session){
		se.setCreatetime(new Date());
		se.setCreateuser((Users)session.getAttribute("curruser"));
		biz.addService(se);
		return "crm_service/add";
	}
}

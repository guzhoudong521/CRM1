package crm.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import crm.biz.ICustomerBiz;
import crm.entity.Area;
import crm.entity.Custgrade;
import crm.util.QueryParam;

@Controller
@RequestMapping("/cust")
public class CustomerAction {

	@Autowired
	private ICustomerBiz biz;
	
	
	@RequestMapping(value="/dolist")
	public String getAll(QueryParam q,Model mod){
		
		q.setPageSize(6);
		
		QueryParam qp= biz.getAllByPage(q);
		mod.addAttribute("custparam", qp);		
		
		return "crm_cus/info/list";
	}
	
	@RequestMapping("/getallarea")
	@ResponseBody
	public List<Area> getAllArea(){
						
		return biz.getAllArea();
	}
	
	
	@RequestMapping("/getallgrade")
	@ResponseBody
	public List<Custgrade> getAllGrade(){
		
		return biz.getAllGrade();
	}
}

package crm.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import crm.biz.ICustomerBiz;
import crm.entity.Area;
import crm.entity.Contact;
import crm.entity.Custgrade;
import crm.entity.Customer;
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
	
	
	@RequestMapping("/getbyid")
	public String getById(@RequestParam("id")int id,@RequestParam("type")String type,HttpSession session){
		
		Customer cus=biz.getById(id);
		
		session.setAttribute("bjcus", cus);
	
		if(type.equals("bj")){
			
			return "crm_cus/info/edit";
			
		}else if(type.equals("lxr")){
			
			return "crm_cus/info/linkman";
		}
		return "";
	}
	/*asdsad*/
	@RequestMapping("/modcust")
	public String modCust(Customer cust){
		biz.modCust(cust);
		
		return "redirect:/cust/dolist.action";
	}
	
	@RequestMapping("/addcon")
	public String addContact(Contact con){
		
		biz.addContact(con);
		int id=con.getCustomer().getCustid();
		return "redirect:/cust/getbyid.action?id="+id+"&type=lxr";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}

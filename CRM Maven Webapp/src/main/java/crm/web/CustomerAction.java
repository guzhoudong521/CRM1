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
import crm.entity.Meet;
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
	
	
	@RequestMapping("/getconbyid")
	public String getConById(int id,Model mod){
		
		Contact con=biz.getConById(id);
		mod.addAttribute("currcon", con);
		return "crm_cus/info/linkman_edit";
	}
	
	@RequestMapping("/modcon")
	public String modContact(Contact con,HttpSession session){
		
		biz.modContact(con);
		Customer c=(Customer)session.getAttribute("bjcus");
		int id=c.getCustid();
		return "redirect:/cust/getbyid.action?id="+id+"&type=lxr";
	}
	
	@RequestMapping("/delcon")
	public String delCon(@RequestParam("id")int id,HttpSession session){
		biz.delCon(id);
		Customer c=(Customer)session.getAttribute("bjcus");
		int idd=c.getCustid();
		return "redirect:/cust/getbyid.action?id="+idd+"&type=lxr";
	}
	/*
	 * 交往记录
	 * */
	
	@RequestMapping("/getmeet")
	public String getMeetById(QueryParam q,Model mod,HttpSession session){
		
		Customer cus=biz.getById(q.getCustid());
		session.setAttribute("bjcus", cus);
		
		QueryParam qq=biz.getMeetByCustId(q);
	
		mod.addAttribute("currmeet", qq);
		
		return "crm_cus/info/contact";
	}
	
	
	@RequestMapping("/addmeet")
	public String addMeet(Meet meet,HttpSession session){
		Customer cus=(Customer)session.getAttribute("bjcus");
		int id=cus.getCustid();
		String date=meet.getMeetime();			
		meet.setMeetime(date.replace("T", "  "));
		biz.addMeet(meet);
		
		return "redirect:/cust/getmeet.action?custid="+id;
	}
	
	@RequestMapping("/getmeetbyid")
	public String getMeetById(@RequestParam("id")int id,Model mod){
		
		Meet meet=biz.getMeetById(id);
		
		mod.addAttribute("meet", meet);
		
		return "crm_cus/info/contact_edit";
	}
	
	@RequestMapping("/modmeet")
	public String modMeet(Meet meet,HttpSession session){
		Customer cus=(Customer)session.getAttribute("bjcus");
		int id=cus.getCustid();
		biz.modMeet(meet);
		
		return "redirect:/cust/getmeet.action?custid="+id;
	}
	
	@RequestMapping("/delmeet")
	public String delMeet(int id,HttpSession session){
		Customer cus=(Customer)session.getAttribute("bjcus");
		int idd=cus.getCustid();
		biz.delMeet(id);
		return "redirect:/cust/getmeet.action?custid="+idd;
	}
	
	
	
	
	
	
	
	
}

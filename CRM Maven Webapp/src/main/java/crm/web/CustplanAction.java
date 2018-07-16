package crm.web;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import crm.biz.ICustplanBiz;
import crm.entity.Custplan;
import crm.entity.Users;
import crm.util.QueryParam;

@Controller
@RequestMapping("/plan")
public class CustplanAction {

	@Autowired
	private ICustplanBiz biz;
	
	
	@RequestMapping(value="/getall")
	public String getAll(QueryParam q,Model mod){
		
		
		QueryParam qq=biz.getAllByPage(q);
		
		
	List<Custplan> list=qq.getList();
	
		mod.addAttribute("queryp",qq);
		
		return "crm_sale/dev/list";
	}
	
	@RequestMapping(value="/doadd")
	public String addCust(Custplan cus){
		Users u=new Users();
		u.setUserid(1034);
		cus.setChuangjianshijian(new Date());
		cus.setChuangjianren(u);
		biz.addPlan(cus);
		
		return "redirect:/plan/getall.action";
	}
	
	
	@RequestMapping(value="/getbyid")
	public String getById(@RequestParam("id")int id,Model mod){
	
		Custplan cus=biz.getById(id);
		mod.addAttribute("currplan", cus);
		
		if(cus.getZhaungtai().equals("计划已制定")){
			
			return "crm_sale/opp/dayin";
		}else{
			
			return "crm_sale/opp/dispatch";
		}
	}
	
	
	@RequestMapping(value="/domod")
	public String modCust(Custplan c){
		
		c.setZhaungtai("计划已制定");
		c.setZhixingshijian(new Date());
		biz.modPlan(c);
		return "redirect:/plan/getall.action";
	}
	
	@RequestMapping(value="/zhixing")
	public String zhixin(){
		
		
		
		return "";
	}
	
	
	
	
	
}

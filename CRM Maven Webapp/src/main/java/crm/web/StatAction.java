package crm.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import crm.biz.IStatBiz;
import crm.entity.Stat;
import crm.util.QueryParam;

@Controller
@RequestMapping("/stat")
public class StatAction {

	
	@Autowired
	private IStatBiz biz;
	
	
	@RequestMapping("/getgrade")
	public String getGrade(Model mod){
		
		List<Stat> list=biz.getGradeStat();
		mod.addAttribute("grade", list);
		return "crm_rep/constitute";
	}
	
	@RequestMapping("/getsertype")
	public String getSerType(Model mod){
		
		List<Stat> list=biz.getSerType();
		mod.addAttribute("sertype", list);
		return "crm_rep/service";
	}
	
	
	@RequestMapping("/getsale")
	public String getSale(QueryParam q,Model mod){
		
		QueryParam qq=biz.getSale(q);
		mod.addAttribute("saleparam", qq);
		
		return "crm_rep/contribution";
	}
	
	
	
	
	
	
	
	
	
}

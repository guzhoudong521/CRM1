package crm.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import crm.biz.IProductBiz;
import crm.entity.Warehouse;
import crm.util.QueryParam;

@Controller
@RequestMapping("/pro")
public class ProductAction {

	@Autowired
	private IProductBiz biz;
	
	
	@RequestMapping("/getall")
	public String getAllPro(QueryParam q,Model mod){
		
		QueryParam qq=biz.getAllPro(q);
		mod.addAttribute("proparam", qq);
		
		return "crm_base/product";
	}
	
	@RequestMapping("/getalltype")
	@ResponseBody
	public List<String> getAllType(){
		
		return biz.getAllType();
	}
	
	@RequestMapping("/getallgrade")
	@ResponseBody
	public List<String> getAllGrade(){
		
		return biz.getAllGrade();
	}
	
	@RequestMapping("/getallcangku")
	@ResponseBody
	public List<Warehouse> getAllCangKu(){
		
		return biz.getAllCangKu();
	}
	
	
	@RequestMapping("/getallkucun")
	public String getAllKucun(QueryParam q,Model mod){
		
		QueryParam qq=biz.getAllKucun(q);
		mod.addAttribute("kucunparam", qq);
		
		return "crm_base/stock";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}

package crm.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import crm.biz.ICustplanBiz;
import crm.entity.Custplan;
import crm.util.QueryParam;

@Controller
@RequestMapping("/plan")
public class CustplanAction {

	@Autowired
	private ICustplanBiz biz;
	
	
	@RequestMapping(value="/getall")
	public String getAll(QueryParam q,Model mod){
		if(q.getPage()==0){q.setPage(1);}
		QueryParam qq=biz.getAllByPage(q);
		
		mod.addAttribute("queryp",qq);
		
		return "../crm_sale/dev/list";
	}
}

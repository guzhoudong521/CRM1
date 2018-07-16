package crm.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import crm.biz.IRoleBiz;
import crm.entity.Role;

@Controller
@RequestMapping("/role")
public class RoleAction {
	@Autowired
	private IRoleBiz biz;

	public IRoleBiz getBiz() {
		return biz;
	}

	public void setBiz(IRoleBiz biz) {
		this.biz = biz;
	}
	
	@RequestMapping("/getAll")
	@ResponseBody
	public List<Role> getall(){
		List<Role> li=biz.getAllRole();
		return li;
	}
}

package crm.web;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import crm.biz.IServiceBiz;
import crm.biz.IUserBiz;
import crm.entity.Services;
import crm.entity.Users;
import crm.util.QueryParam;

@Controller
@RequestMapping("/ser")
public class ServiceAction {
	@Autowired
	private IServiceBiz biz;
    @Autowired
    private IUserBiz ubiz;
    
	public IUserBiz getUbiz() {
		return ubiz;
	}

	public void setUbiz(IUserBiz ubiz) {
		this.ubiz = ubiz;
	}

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
		return "redirect:getAll.action";
	}
	//列表服务
	@RequestMapping("/getAll")
	public ModelAndView getAll(QueryParam par,ModelAndView mm){
		SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd");
	    if(par.getCreatetime()!=null)
		{
	    	try {
				Date createtime = format.parse(par.getCreatetime());
				Calendar ca=Calendar.getInstance();	
				ca.setTime(createtime);
				par.setChuangjianshijian1(ca.getTime());
				ca.setTime(createtime);
				ca.add(ca.DATE, +1);
				par.setChuangjianshijian2(ca.getTime());	
			} catch (ParseException e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}
		}
		QueryParam pp=biz.getAll(par);
		List<Services> list=pp.getList();
		QueryParam userpar=new QueryParam();
		userpar.setPageSize(99999);
		QueryParam ux=ubiz.getAllUser(userpar);
		List<Users> ulist=ux.getList();
		for(Services ser:list){
			ser.setList(ulist);
		}
		mm.addObject("par", pp);
		mm.setViewName("crm_service/dispatch");
		return mm;
	}
    //分配给谁
	@RequestMapping("/allot")
	public String allot(Services se){
		biz.allot(se);
		return "redirect:getAll.action";
	}
	//删除
	@RequestMapping("/del")
	public String del(int id){
		biz.delete(id);
		return "redirect:getAll.action";
	}
	//通过ID获取服务
	@RequestMapping("/getAllById")
	public ModelAndView getAllById(QueryParam par,ModelAndView mm,HttpSession session){
		SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd");
	    if(par.getCreatetime()!=null)
		{
	    	try {
				Date createtime = format.parse(par.getCreatetime());
				Calendar ca=Calendar.getInstance();	
				ca.setTime(createtime);
				par.setChuangjianshijian1(ca.getTime());
				ca.setTime(createtime);
				ca.add(ca.DATE, +1);
				par.setChuangjianshijian2(ca.getTime());	
			} catch (ParseException e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}
		}
	    Users userNow=(Users)session.getAttribute("curruser");
	    par.setCustid(userNow.getUserid());
		QueryParam pp=biz.getAllById(par);
		mm.addObject("par", pp);
		mm.setViewName("crm_service/deal_list");
		return mm;
	} 
}

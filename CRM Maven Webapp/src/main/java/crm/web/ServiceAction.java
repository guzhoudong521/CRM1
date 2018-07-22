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
				ca.add(ca.DAY_OF_MONTH, -1);
				par.setChuangjianshijian1(ca.getTime());
				ca.setTime(createtime);
				ca.add(ca.DAY_OF_MONTH, +1);
				System.out.println(ca.getTime());
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
		se.setAllottime(new Date());
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
				ca.add(ca.DAY_OF_MONTH, -1);
				par.setChuangjianshijian1(ca.getTime());
				ca.setTime(createtime);
				ca.add(ca.DAY_OF_MONTH, +1);
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
	//通过ID获取单个服务
	@RequestMapping("/getServiceById")
	public ModelAndView getServiceById(int id,ModelAndView mm){
		Services ser=biz.getById(id);
		mm.addObject("ser", ser);
		mm.setViewName("crm_service/deal");
		return mm;
	}
	//提交服务处理
	@RequestMapping("/dis")
	public String dis(Services ser,HttpSession sess){
		Users us=(Users)sess.getAttribute("curruser");
		ser.setDisposeuser(us);
		ser.setDisposetime(new Date());
		biz.dis(ser);
		return "redirect:getAllById.action?id="+us.getUserid();
	}
	//获取所有已处理的服务
	@RequestMapping("/getAllPro")
	public ModelAndView getAllPro(QueryParam par,ModelAndView mm){
		SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd");
	    if(par.getCreatetime()!=null)
		{
	    	try {
	    		Date createtime = format.parse(par.getCreatetime());
				Calendar ca=Calendar.getInstance();	
				ca.setTime(createtime);
				ca.add(ca.DAY_OF_MONTH, -1);
				par.setChuangjianshijian1(ca.getTime());
				ca.setTime(createtime);
				ca.add(ca.DAY_OF_MONTH, +1);
				par.setChuangjianshijian2(ca.getTime());		
			} catch (ParseException e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}
		}
		QueryParam pp=biz.getAllPro(par);
		mm.addObject("par", pp);
		mm.setViewName("crm_service/feedback_list");
		return mm;
	}
	//获取单个已处理的服务
	@RequestMapping("/getService2")
	public ModelAndView getServiceById2(int id,ModelAndView mm){
		Services ser=biz.getById(id);
		mm.addObject("ser", ser);
		mm.setViewName("crm_service/feedback");
		return mm;
	}
	//反馈
	@RequestMapping("/result")
	public String result(Services ser){
		biz.result(ser);
		return "redirect:getAllPro.action";
	}
	//归档列表
	@RequestMapping("/file")
	public ModelAndView getAllFile(QueryParam par,ModelAndView mm){
		SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd");
	    if(par.getCreatetime()!=null)
		{
	    	try {
	    		Date createtime = format.parse(par.getCreatetime());
				Calendar ca=Calendar.getInstance();	
				ca.setTime(createtime);
				ca.add(ca.DAY_OF_MONTH, -1);
				par.setChuangjianshijian1(ca.getTime());
				ca.setTime(createtime);
				ca.add(ca.DAY_OF_MONTH, +1);
				par.setChuangjianshijian2(ca.getTime());		
			} catch (ParseException e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}
		}
		QueryParam pp=biz.getAllRes(par);
		mm.addObject("par", pp);
		mm.setViewName("crm_service/file_list");
		return mm;
	}
	//归档详情
	@RequestMapping("/getFileById")
	public ModelAndView getFileById(int id,ModelAndView mm){
		Services ser=biz.getById(id);
		mm.addObject("ser", ser);
		mm.setViewName("crm_service/file_detail");
		return mm;
	}
}

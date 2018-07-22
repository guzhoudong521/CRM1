package crm.web;

import java.util.ArrayList;
import java.util.Date;
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
import crm.biz.IOrderBiz;
import crm.biz.IProductBiz;
import crm.entity.Area;
import crm.entity.Contact;
import crm.entity.Custgrade;
import crm.entity.Customer;
import crm.entity.Meet;
import crm.entity.OrderDetail;
import crm.entity.Orders;
import crm.entity.Product;
import crm.util.QueryParam;

@Controller
@RequestMapping("/cust")
public class CustomerAction {

	@Autowired
	private ICustomerBiz biz;
	@Autowired
	private IOrderBiz obiz;
	@Autowired
	private IProductBiz pbiz;
	
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
	
	/*
	 * 客户-->订单
	 * */
	@RequestMapping("/getallorder")
	public String getAllOrder(QueryParam q,Model mod,HttpSession session){
	
		if(q.getCustid()==null){
			
			Customer cust=(Customer)session.getAttribute("bjcus");
			q.setCustid(cust.getCustid());
			
		}else{
			Customer cus=biz.getById(q.getCustid());
			session.setAttribute("bjcus", cus);		
		}
		
		
		QueryParam qq=obiz.getOrderByCustI(q);
		List<Orders> list=qq.getList();
		for(Orders o:list){
			System.out.println("***************");
			System.out.println(o.getAddress());
		}
		mod.addAttribute("orderparam", qq);
		
		return "crm_cus/info/order";
	}
	
	@RequestMapping("/getalldetail")
	public String getDetail(QueryParam q,Model mod,HttpSession session){
		
		if(q.getGonghao()==null){
			Integer oid=(Integer)session.getAttribute("oid");
			q.setGonghao(oid);
			
		}else{
			
			session.setAttribute("oid", q.getGonghao());
		}
		Orders o=obiz.getOrderById(q.getGonghao());
		mod.addAttribute("currorder", o);
		long sum=obiz.getSumByOrder(q.getGonghao());
		mod.addAttribute("sum", sum);
		QueryParam qq=obiz.getDetailById(q);
		mod.addAttribute("currdetail", qq);
		return "crm_cus/info/order_detail";
	}
	
	/*
	 * 增加订单第一步
	 * */
	@RequestMapping("/addorder1")
	public String addOrderBefor(@RequestParam("id")int id,HttpSession session,Model mod){

		Orders ord=(Orders)session.getAttribute("currorder");
		if(ord!=null){
			if(ord.getCust().getCustid()!=id){
			
				session.removeAttribute("listDetail");		
				if(id==1){
					
					return "redirect:/cust/dolist.action";
				}
				
			}	
		}
			
			Customer cus=biz.getById(id);		
			Orders o=new Orders();		
			o.setCust(cus);
			o.setOrdtime(new Date().toString());
			o.setStatus("新创建");
			session.setAttribute("currorder", o);
		
		//创建一个用来删除订单详细伪id，
		session.setAttribute("weiid", 1);
		
		return "crm_cus/info/order_add";
	}
	/*
	 * 增加订单第二步
	 * 增加订单明细
	 * */
	
	@RequestMapping("/adddetail")
	public String addOrderDetail(OrderDetail ord,HttpSession session){
		
		Product pp=pbiz.getBuId(ord.getPro().getPid());
		ord.setPro(pp);
		
		List<OrderDetail> list=(List<OrderDetail>)session.getAttribute("listDetail");
		if(list==null){				
			list=new ArrayList<OrderDetail>();		
		}
		//让伪id每次不再重复
		Integer xx=(Integer)session.getAttribute("weiid");
		ord.setId(xx);
		xx++;
		session.setAttribute("weiid", xx);
		//增加订单详细到list中
		list.add(ord);
		session.setAttribute("listDetail", list);
		
		/*更新订单中的总价*/
		Orders o=(Orders)session.getAttribute("currorder");
		double price=ord.getPnum()*ord.getPro().getPrice();			
		o.setSum(price+o.getSum());
		session.setAttribute("currorder", o);
		
		
		return "crm_cus/info/order_add";
	}
	
	@RequestMapping("/deldetail")
	public String delDetail(int id,HttpSession session){
		
		List<OrderDetail> list=(List<OrderDetail>)session.getAttribute("listDetail");
		
		for(int i=0;i<list.size();i++){
			
			OrderDetail od=list.get(i);
			if(od.getId()==id){
				list.remove(i);
			}
			
		}
		session.setAttribute("listDetail", list);
		
		
		return "crm_cus/info/order_add";
	}
	
	@RequestMapping("/addorder")
	public String addOrder(String address,HttpSession session){
		
		Orders o=(Orders)session.getAttribute("currorder");
		List<OrderDetail> list=(List<OrderDetail>)session.getAttribute("listDetail");
		o.setList(list);
		o.setAddress(address);
		obiz.addOrder(o);
		return "redirect:/cust/dolist.action";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}

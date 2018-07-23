package crm.web;



import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.orm.hibernate3.LocalCacheProviderProxy;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import crm.entity.Users;

public class LoginCheck extends HandlerInterceptorAdapter{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO 自动生成的方法存根
		Users us=(Users)request.getSession().getAttribute("curruser");
		
		if(us==null){
			
			PrintWriter out=response.getWriter();

		    out.println("<html>");    
		    out.println("<script>");  
		    out.println("window.open ('"+request.getContextPath()+"/login.jsp','_top')"); 
			//response.sendRedirect(request.getContextPath()+"/login.jsp");
		    out.println("</script>");    
		    out.println("</html>");  
			
			return false;
		}else{
			
			return true;
		}
		
		
		
	}
}

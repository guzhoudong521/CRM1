package crm.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import crm.entity.Users;

public class LoginCheck extends HandlerInterceptorAdapter{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO 自动生成的方法存根
		Users us=(Users)request.getSession().getAttribute("curruser");
		
		if(us==null){
			
			response.sendRedirect(request.getContextPath()+"/login.jsp");
			return false;
		}else{
			
			return true;
		}
		
		
		
	}
}

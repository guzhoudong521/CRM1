package crm.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

public class Erro implements HandlerExceptionResolver{

	public ModelAndView resolveException(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2,
			Exception arg3) {
		// TODO 自动生成的方法存根
		String message=arg3.getMessage();
		ModelAndView mm=new ModelAndView();
		mm.addObject("mess", message);
		mm.setViewName("error");
		return mm;
	}

}

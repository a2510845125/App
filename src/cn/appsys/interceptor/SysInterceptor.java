package cn.appsys.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.appsys.pojo.Backend_user;
import cn.appsys.pojo.Dev_user;
import org.apache.log4j.Logger;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;


import cn.appsys.tools.Constants;

//拦截器
public class SysInterceptor extends HandlerInterceptorAdapter {
	private Logger logger = Logger.getLogger(SysInterceptor.class);
	
	public boolean preHandle(HttpServletRequest request,HttpServletResponse response,Object handler) throws Exception{
		logger.debug("拦截器已经启动 ==========================");
		HttpSession session = request.getSession();
		
		Backend_user backendUser = (Backend_user)session.getAttribute(Constants.USER_SESSION);
		Dev_user devUser = (Dev_user)session.getAttribute(Constants.USER_SESSION);
		
		if(null != devUser){ //dev SUCCESS
			return true;
		}else if(null != backendUser){ //backend SUCCESS
			return true;
		}else{
			response.sendRedirect(request.getContextPath()+"/403.jsp");
			return false;
		}
		
	}
}

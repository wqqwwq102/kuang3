package com.kuang3.filter;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kuang3.dao.UserDao;
import com.kuang3.entity.IpLog;
import com.kuang3.service.UserService;
import com.kuang3.util.UserUtil;

public class loginFilter implements Filter{
	UserService userService;
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
			 userService = new UserService();
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest)request;
		HttpServletResponse resp = (HttpServletResponse)response;
		if(req.getSession().getAttribute("user")==null){
			resp.sendRedirect("/"+req.getContextPath());
			doFilter(request, response, chain);
		}else{
			doFilter(request, response, chain);
		}
	}

	@Override
	public void destroy() {
		
	}

}

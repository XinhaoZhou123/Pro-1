package com.neusoft.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginFilter implements Filter {

	@Override
	public void destroy() {
		System.out.println("........LoginFilter............destory()..............");
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("........LoginFilter............doFilter()..............");
		HttpSession session = ((HttpServletRequest)request).getSession();
		boolean isLoginOk = Boolean.parseBoolean(session.getAttribute("isLoginOk")+"");
		if(isLoginOk){
			chain.doFilter(request, response);
		}else{
			
			//request.setAttribute("msg", "没有权限，请登入");
			request.getRequestDispatcher("/Education/login.html").forward(request, response);
			//((HttpServletResponse)response).sendRedirect("/Education/login.html");
		}
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		System.out.println("........LoginFilter............init()..............");

	}

}

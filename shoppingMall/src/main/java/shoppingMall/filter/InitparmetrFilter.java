package shoppingMall.filter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class InitparmetrFilter implements Filter{
	private FilterConfig filterConfig = null;
	
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("Filter02 수행");
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		String param1 = filterConfig.getInitParameter("param1");
		String param2 = filterConfig.getInitParameter("param2");
		
			String message = "로그인 실패";
	      response.setCharacterEncoding("utf-8");
	      response.setContentType("text/html; charset=utf-8");
	      PrintWriter writer =  response.getWriter();
	      if(id.equals(param1) && password.equals(param2))
	         message = "로그인 성공";
	      writer.print(message);
	      chain.doFilter(request, response);
		}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		System.out.println("Filter 02 초기화");
		this.filterConfig = filterConfig;
	}

	
}

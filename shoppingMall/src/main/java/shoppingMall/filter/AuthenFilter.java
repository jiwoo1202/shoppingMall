package shoppingMall.filter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class AuthenFilter implements Filter {

	@Override
	public void destroy() {
		System.out.println("Filter01 해제...");

	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain filterChain)
			throws IOException, ServletException {
		request.setCharacterEncoding("utf-8");
		System.out.println("Filter01.jsp 수행.....");
		String name = request.getParameter("name");
		if(name == null || name.equals("")) {
			response.setCharacterEncoding("utf-8");
			response.setContentType("text/html; charset=utf-8");
			PrintWriter writer =  response.getWriter();
			String message = "입력된 값은 null 입니다.";
			writer.print(message);
			return;
		}
		filterChain.doFilter(request, response);

	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		System.out.println("Filter01 초기화......");

	}

}

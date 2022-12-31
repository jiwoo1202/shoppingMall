package shoppingMall.filter;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class LogFileFilter implements Filter {
	private PrintWriter writer;
	
	@Override
	public void destroy() {
		writer.close();
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("Filter03 수행");
		writer.printf("현재 일시 : %s \n", getCurrentTime());
		writer.printf("클라이언트 주소 : %s \n", request.getRemoteAddr());
		writer.printf("컨턴츠 유형 : %s \n",response.getContentType());
		writer.printf("----------------------------------------------------------\n");
		writer.flush();	
		chain.doFilter(request, response);
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		String fileName =  filterConfig.getInitParameter("filename");
		if(fileName == null || fileName.isBlank())
			throw new ServletException("로그파일의 이름을 찾을수  없습니다.");
		
		try {
			writer =  new PrintWriter(fileName, "utf-8");
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
	}

	private Object getCurrentTime() {
		DateFormat formater =  new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Calendar calendar =  Calendar.getInstance();
		calendar.setTimeInMillis(System.currentTimeMillis());		
		return formater.format(calendar.getTime());
	}

}

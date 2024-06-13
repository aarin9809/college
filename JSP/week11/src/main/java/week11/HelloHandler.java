package week11;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class HelloHandler implements CommandHandler{
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		//command=="greeting"인 경우의 비즈니스 로직 처리
		request.setAttribute("result", "안녕하세요");
		//필요한 로직 처리가 있으면 추가
		
		return "greeting.jsp";
	}
}

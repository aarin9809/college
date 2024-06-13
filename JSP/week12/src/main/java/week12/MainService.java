package week12;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class MainService implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		// main.do 요청을 처리하는 부분
		return "menu";
	}
}

package week11;

import java.util.Date;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class DateHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("result", new Date());
		return "date.jsp";
	}

}
package week12;

import java.sql.SQLException;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public interface CommandHandler {
	public String process(HttpServletRequest request,
							HttpServletResponse response) throws ClassNotFoundException, SQLException;
}

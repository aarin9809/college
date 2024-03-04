package week12;

import java.sql.SQLException;
import java.util.ArrayList;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class QueryEmpService implements CommandHandler{
	private EmpDao empDao;
	
	public QueryEmpService() {
		empDao = new EmpDao();
		
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException {
		// 데이터베이스의 emp 테이블 정보를 읽어오기.
		// 서비스 클래스에서는 비즈니스 로직을 처리 X
		// 비즈니스 로직 처리 => Dao에서 처리
		
		//사원 목록 읽어오기
		ArrayList<Emp> list = empDao.queryEmp();
		
		request.setAttribute("list", list);

		return "queryEmp_list";
	}
}

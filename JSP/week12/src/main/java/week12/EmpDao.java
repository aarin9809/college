package week12;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class EmpDao {
	// emp 테이블과 관련된 모든 비즈니스 로직 처리(DB 연동)
	
	private Connection conn = null;
	private Connection getConnection() throws ClassNotFoundException, SQLException {
		Connection conn = null;
		
		String jdbcDriver = "com.mysql.jdbc.Driver";
		String jdbcURL	  = "jdbc:mysql://localhost:3306/jspDB";
		String user		  = "root";
		String password	  = "Gks!4971576";
		
		Class.forName(jdbcDriver);
		conn = DriverManager.getConnection(jdbcURL, user, password);
		
		return conn;
	}

	public ArrayList<Emp> queryEmp() throws ClassNotFoundException, SQLException {
		System.out.println("[EmpDao] queryEmp()");
		
		ArrayList<Emp> list = new ArrayList<>();
		
		String sql = "select * from emp";
		
		conn = getConnection();
		Statement stat = conn.createStatement();
		ResultSet rs = stat.executeQuery(sql);

		while(rs.next()) {
			Emp emp = new Emp();
			emp.setEmpno(rs.getString("empno"));
			emp.setEmpname(rs.getString("empname"));
			emp.setEmpdept(rs.getString("empdept"));
			emp.setEmpjob(rs.getString("empjob"));
			emp.setEmpsal(rs.getInt("empsal"));
			
			list.add(emp);
		}
		return list;
	}

}

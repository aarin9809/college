<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>데이터베이스 연결</h3>
	
	<%
		//1. JDBC 드라이버 로딩
		Class.forName("com.mysql.jdbc.Driver");
	
		//필요한 객체 선언
		Connection conn = null;
		Statement stat = null;
		ResultSet rs = null;
		
		// DB연결을 위한 필요한 정보 선언
		String jdbcURL = "jdbc:mysql://localhost:3306/jspDBC";
		String dbUser = "root";
		String dbPass = "Gks!4971576";
		
		//쿼리 실행 문장
		String sql = "select * from emp";
		
		//2. 데이터베이스 커넥션 생성
		conn = DriverManager.getConnection(jdbcURL, dbUser,dbPass);
		
		//3. 쿼리 실행을 위한 Statement 객체 생성
		stat = conn.createStatement();
		
		//4. 쿼리 실행
		rs = stat.executeQuery(sql);
		
		//5. 쿼리 실행 결과 출력
		if (rs != null)
			out.println("데이터베이스 연결 성공");
		else 
			out.println("데이터베이스 연결 실패");
		
		//6. 사용한 객체들 종료
		rs.close();
		stat.close();
		conn.close();
	%>
</body>
</html>
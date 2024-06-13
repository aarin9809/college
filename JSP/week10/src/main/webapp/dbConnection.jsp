<%@page import="java.sql.DriverManager"%>
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
<%
	Class.forName("com.mysql.jdbc.Driver");

	//필요한 객체 선언
	Connection conn = null;

	// DB연결을 위한 필요한 정보 선언
	String jdbcURL = "jdbc:mysql://localhost:3306/jspDBC";
	String dbUser = "root";
	String dbPass = "Gks!4971576";


	//2. 데이터베이스 커넥션 생성
	conn = DriverManager.getConnection(jdbcURL, dbUser, dbPass);
%>
</body>
</html>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>request 헤더 정보</h2>
	<%
		//모든 헤더의 이름을 읽기
		Enumeration hEnum = request.getHeaderNames();
		while (hEnum.hasMoreElements()) {
			String hName = (String)hEnum.nextElement();
			String hValue = request.getHeader(hName);
			out.println(hName + "=" + hValue + "<br>");
		}
	
	%>
</body>
</html>
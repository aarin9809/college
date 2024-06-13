<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>Server 정보</h3>
	<%= application.getServerInfo()  %><br>
	<h3>Servlet 정보</h3>
	<%=application.getMajorVersion()  %>.<%=application.getMinorVersion() %>
	
	<h3>JSP 정보</h3>
	<%=JspFactory.getDefaultFactory().getEngineInfo().getSpecificationVersion() %>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	body_sub.jsp에서 name 파라미터 값 = <%=request.getParameter("name") %>
	<hr>
	name 파라미터 목록 :
	<ul>
		<%
			String[] names = request.getParameterValues("name");
			for(String name : names)
				out.println("<ul>" + name + "</ul>");
		%>
	
	
	</ul>
</body>
</html>
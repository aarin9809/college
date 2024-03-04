<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
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
	Date time = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
%>
세션 ID : <%=session.getId() %><br>

<%
	time.setTime(session.getCreationTime());
%>
세션 생성시간 : <%=sdf.format(time) %><br>

<%
	time.setTime(session.getLastAccessedTime());
%>

최근 접근시간 : <%=sdf.format(time) %><br>

<hr>

<%
	session.setAttribute("id", "admin");
	session.setAttribute("name", "홍길동");
%>
세션에 정보를 저장했습니다.
</body>
</html>
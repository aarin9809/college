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
		request.setAttribute("name", "홍길동");
		session.setAttribute("ID", "admin");
		application.setAttribute("appValue", "EL object");
	%>

	<h4>
		요청 URI : ${pageContext.request.requestURI }<br>
		code 파라미터 값 : ${param.code }<br>
		쿠키의 JSESSION 값 :${cookie.JSESSIONID.value  }<br>
		request의 name : ${requestScope.name }<br>
		session의 ID : ${sessionScope.ID }<br>
		application의 appValue : ${applicationScope.appValue }<br>
	</h4>
	<hr>
	<h4>
		request의 name : ${name}<br>
		session의 ID : ${ID }<br>
		application의 appValue : ${appValue }<br>
	</h4>
</body>
</html>
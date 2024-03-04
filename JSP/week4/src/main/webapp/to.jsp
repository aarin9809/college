<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	이 페이지는 to.jsp가 만든 페이지입니다.
	<%
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String addr= request.getParameter("addr");
		String email = request.getParameter("email");
	%>

	<h3>jsp param 액션태그 결과</h3>	

	<h4>
		아이디 : <%=id %><br>	
		패스워드: <%=password %><br>	
		이름 : <%=name %><br>	
		주소 : <%=addr %><br>	
		이메일 : <%=email %><br>	
	</h4>
	
</body>
</html>
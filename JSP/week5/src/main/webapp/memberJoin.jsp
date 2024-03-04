<%@page import="java.text.SimpleDateFormat, java.util.Date" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% request.setCharacterEncoding("utf-8");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String strDate = sdf.format(date);
		//12~14 line 날짜 받기
	%>
	<jsp:useBean id="memberInfo" class="week5.MemberInfo" />
	<jsp:setProperty property="*" name="memberInfo"/>
	<jsp:setProperty property="password" name="memberInfo"
					value="<%=memberInfo.getId() %>"/>
	<jsp:setProperty property="registerDate" name="memberInfo"
					value="<%= strDate %>"/>

<!-- 18 line에서 '*'이 가지는 의미는 memberForm.jsp에서 ID, name, email을 받을때 다 다를 것을 생각해서
	 변수명과 자바빈의 속성을 맞춰주는것이다.
 -->	
	
	<table border="1">
		<tr><td>아이디</td>
			<td><jsp:getProperty property="id" name="memberInfo" /></td>
			<td>암호</td>	
			<td><jsp:getProperty property="password" name="memberInfo" /></td>
		</tr>

		<tr><td>이름</td>
			<td><jsp:getProperty property="name" name="memberInfo" /></td>
			<td>이메일</td>	
			<td><jsp:getProperty property="email" name="memberInfo" /></td>
		</tr>
		<tr><td>등록일자</td>
				<td colspan="3"><jsp:getProperty property="registerDate" name="memberInfo"/></td>
			</tr>	
	</table>
</body>
</html>
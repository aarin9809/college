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

	<jsp:useBean id="bookInfo" class="week5.BookInfo" />
	<jsp:setProperty property="*" name="bookInfo"/>
	<jsp:setProperty property="pubDate" name="bookInfo"
					value="<%= strDate %>"/>

	
	<table border="1">
		<tr><td align="center">코드</td>
			<td align="center">제목</td>	
			<td align="center">저자</td>
			<td align="center">출판일자</td>
		</tr>

		<tr>
		<td><jsp:getProperty property="code" name="bookInfo" /></td>
		<td><jsp:getProperty property="title" name="bookInfo" /></td>
		<td><jsp:getProperty property="writer" name="bookInfo" /></td>	
		<td colspan="3"><jsp:getProperty property="pubDate" name="bookInfo" /></td>
		</tr>

	</table>
</body>
</html>
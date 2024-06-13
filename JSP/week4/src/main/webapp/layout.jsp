<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table width="400" border="1" cellpadding="10" cellspacing="0">

	<tr>
		<td colsapn="2"><jsp:include page="top.jsp"/> </td>
	</tr>	
	
	<tr>
		<td width="100">
		<jsp:include page="left.jsp"/>
		</td>

		<td width="300" valign="top">
			<!-- 실제 내용 부분 -->
			레이아웃1
			<jsp:include page="info.jsp" />
		</td>
	</tr>	

	<tr>
		<td colsapn="2"><jsp:include page="bottom.jsp"/>/td>
	</tr>	
	</table>
</body>
</html>
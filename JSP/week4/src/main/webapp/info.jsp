<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table width="100%" border="1" cellpadding="10" cellspacing="10">
		<tr>
			<td>모델번호</td>	
			<td>MQ7EKH/A</td>	
		</tr>

		<tr>
			<td>가격</td>	
			<td>1,000,000원</td>	
		</tr>
	</table>

	<jsp:include page="infoSub.jsp">
		<jsp:param value="iPhone" name="type"/>	
	</jsp:include>
</body>
</html>
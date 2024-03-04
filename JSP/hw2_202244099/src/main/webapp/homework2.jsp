<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
      table {
        text-align: center;
      }
      </style>
</head>
<body>
	<h1>< 개인정보 입력 결과 ></h1><br>

	<table border="1">
		<tr>
			<td>구분</td><td>내용</td>
		</tr>
		<tr>
			<td>이름</td><td><%=request.getParameter("name") %></td>
		</tr>
		<tr>
			<td>나이</td><td><%=request.getParameter("age") %></td>
		</tr>
		<tr>
			<td>성별</td><td><%=request.getParameter("sex") %></td>
		</tr>
		<tr>
			<td>주소</td><td><%=request.getParameter("addr") %></td>
		</tr>
		<tr>
			<td>좋아하는 운동</td><td> 
			<% 
				String[] values = request.getParameterValues("sport");
				if (values != null) {
					for (int i=0; i<values.length; i++) 
						out.println(values[i]);
				}
			%>
			</td>

		</tr>
	</table>
</body>
</html>
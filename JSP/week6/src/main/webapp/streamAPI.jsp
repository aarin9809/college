<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>Stream API</h3>
	${varList =[2, 11, 5, 4, 8, 20] }<br>
	${varList.stream().sum() }<br>
	${varList.stream().max().get() }<br>
	${varList.stream().min().get() }<br>
	${varList.stream().average().get() }<br>
	${varList.stream().filter(x -> x%2 == 0).toList() }<br>
	${varList.stream().map(x -> x*x ).toList() }<br>
	오름차순 : ${varList.stream().sorted().toList() }<br>
	내림차순 : ${varList.stream().sorted((x1,x2)->x1 < x2? 1 : -1 ).toList() }<br>
	${varList.stream().count() }<br>
	
</body>
</html>
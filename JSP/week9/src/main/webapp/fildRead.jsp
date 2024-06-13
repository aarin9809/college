<%@page import="java.io.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>절대 경로를 이용한 파일 읽기</h3>
<%
	//같은 웹 앱 폴더 밑에 있어도 직접 읽을 수 없다.

	//반드시 워크스페이스 경로를 통해 프로젝트 폴더까지 지정해야 함.
	String path = application.getRealPath("/WEB-INF/test.txt");

	BufferedReader br = new BufferedReader(new FileReader(path));
	
	while(true) {
		String str = br.readLine();

		if (str == null)
			break;
		out.println(str + "<br>");
	}

	br.close();

%>
</body>
</html>
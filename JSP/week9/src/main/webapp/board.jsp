<%@page import="java.io.*"%>
<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>게시판 글쓰기 결과화면</h3>
	<%
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");	
		String title = request.getParameter("title");	
		String content = request.getParameter("content");	
		
		//데이터를 저장하려면 파일명이 필요 => 파일명은 중복X
		//중복되지 않는 파일명 생성 => Date 객체의 시간 정보 이용
		
		Date date = new Date();
		Long time = date.getTime();
		String fileName = time + ".txt";
		
		//파일이 저장될 경로 설정
		String filePath = application.getRealPath("/WEB-INF/board/"+fileName);
		
		//파일 쓰기
		FileWriter writer = new FileWriter(filePath);
		try {
			String str = "제목 : " + title + "\n";
			str +="글쓴이: " + name + "\n";
			str += content;
			writer.write(str);
			out.println("저장되었습니다.");
		} catch(IOException e) {
			out.println("파일에 데이터를 저장할 수 없습니다.");
		} finally {
			writer.close();
		}
	%>

	<br><br>

	<form action="boardResult.jsp">
		<input type="hidden" name="fileName" value="<%=fileName %>">
		<input type="submit" value="내용보기">
	</form>
</body>
</html>
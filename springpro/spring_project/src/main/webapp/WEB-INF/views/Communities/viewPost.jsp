<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/header.jsp" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>게시글 보기</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <h2 class="mt-5">${post.title}</h2>
        <p class="text-muted">작성자: ${post.author} | 작성일: ${post.createdAt}</p>
        <p>${post.content}</p>
        <a href="<%= request.getContextPath() %>/communities/freeBoard" class="btn btn-primary">목록으로</a>
    </div>
</body>
</html>
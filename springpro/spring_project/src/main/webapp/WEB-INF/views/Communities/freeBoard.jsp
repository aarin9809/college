<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/WEB-INF/views/header.jsp" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>자유게시판</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <h2 class="mt-5">자유게시판</h2>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>번호</th>
                    <th>제목</th>
                    <th>작성자</th>
                    <th>작성일</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="post" items="${posts}">
                    <tr>
                        <td>${post.id}</td>
                        <td><a href="<%= request.getContextPath() %>/communities/freeBoard/view?id=${post.id}">${post.title}</a></td>
                        <td>${post.author}</td>
                        <td>${post.createdAt}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <a href="<%= request.getContextPath() %>/communities/freeBoard/write" class="btn btn-primary">글쓰기</a>
    </div>
</body>
</html>

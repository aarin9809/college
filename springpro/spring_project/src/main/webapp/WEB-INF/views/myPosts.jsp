<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>나의 게시글</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <h2 class="mt-5">나의 게시글</h2>
        <h3>자유게시판</h3>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>번호</th>
                    <th>제목</th>
                    <th>작성일</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="post" items="${freeBoardPosts}">
                    <tr>
                        <td>${post.id}</td>
                        <td><a href="<%= request.getContextPath() %>/communities/freeBoard/view?id=${post.id}">${post.title}</a></td>
                        <td>${post.createdAt}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        
        <h3>공지사항</h3>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>번호</th>
                    <th>제목</th>
                    <th>작성일</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="post" items="${noticePosts}">
                    <tr>
                        <td>${post.id}</td>
                        <td><a href="<%= request.getContextPath() %>/communities/notice/view?id=${post.id}">${post.title}</a></td>
                        <td>${post.createdAt}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        
        <h3>FAQ</h3>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>번호</th>
                    <th>질문</th>
                    <th>작성일</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="post" items="${faqPosts}">
                    <tr>
                        <td>${post.id}</td>
                        <td><a href="<%= request.getContextPath() %>/communities/faq/view?id=${post.id}">${post.question}</a></td>
                        <td>${post.createdAt}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>

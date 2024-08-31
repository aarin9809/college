<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/header.jsp" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FAQ 작성</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <h2 class="mt-5">FAQ 작성</h2>
        <form action="<%= request.getContextPath() %>/communities/faq/write" method="post">
            <div class="form-group">
                <label for="question">질문:</label>
                <input type="text" class="form-control" id="question" name="question" required>
            </div>
            <div class="form-group">
                <label for="answer">답변:</label>
                <textarea class="form-control" id="answer" name="answer" rows="10" required></textarea>
            </div>
            <button type="submit" class="btn btn-primary">작성</button>
        </form>
    </div>
</body>
</html>

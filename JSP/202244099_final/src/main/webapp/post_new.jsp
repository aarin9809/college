<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>신규 게시글 작성</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="main.html">영화 공유 리뷰 사이트</a>
    </nav>
    <div class="container mt-3">
        <h1 class="text-center">신규 게시글 작성</h1>
        <form action="post_new_send.jsp" method="post">
            <div class="form-group">
                <label for="writer">작성자</label>
                <input type="text" class="form-control" id="writer" name="writer">
            </div>
            <div class="form-group">
                <label for="title">제목</label>
                <input type="text" class="form-control" id="title" name="title">
            </div>
            <div class="form-group">
                <label for="content">내용</label>
                <textarea class="form-control" id="content" rows="10" name="content"></textarea>
            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-primary">저장</button>
                <button type="button" class="btn btn-secondary" onclick="location.href='post_list.jsp'">목록으로</button>
                <button type="reset" class="btn btn-danger">초기화</button>
            </div>
        </form>
    </div>

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>

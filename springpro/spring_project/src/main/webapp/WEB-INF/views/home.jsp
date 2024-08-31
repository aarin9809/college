<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>학과 웹페이지</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 20px;
        }
        .navbar {
            margin-bottom: 20px;
        }
        .navbar-nav .nav-item .nav-link {
            color: #555;
        }
        .navbar-nav .nav-item .nav-link:hover {
            background-color: #ddd;
            border-radius: 5px;
        }
        .navbar-nav .nav-item .auth-link {
            margin-left: auto;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">학과 웹페이지</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="departmentDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        학과안내
                    </a>
                    <div class="dropdown-menu" aria-labelledby="departmentDropdown">
                        <a class="dropdown-item" href="<%= request.getContextPath() %>/department/introduction">학과소개</a>
                        <a class="dropdown-item" href="<%= request.getContextPath() %>/department/history">학과연혁</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="curriculumDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        교과과정
                    </a>
                    <div class="dropdown-menu" aria-labelledby="curriculumDropdown">
                        <a class="dropdown-item" href="<%= request.getContextPath() %>/curriculums/1stYear">1학년</a>
                        <a class="dropdown-item" href="<%= request.getContextPath() %>/curriculums/2ndYear">2학년</a>
                        <a class="dropdown-item" href="<%= request.getContextPath() %>/curriculums/3rdYear">3학년</a>
                        <a class="dropdown-item" href="<%= request.getContextPath() %>/curriculums/specialization">전공심화</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="communityDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        커뮤니티
                    </a>
                    <div class="dropdown-menu" aria-labelledby="communityDropdown">
                        <a class="dropdown-item" href="<%= request.getContextPath() %>/communities/notice">공지사항</a>
                        <a class="dropdown-item" href="<%= request.getContextPath() %>/communities/faq">FAQ</a>
                        <a class="dropdown-item" href="<%= request.getContextPath() %>/communities/freeBoard">자유게시판</a>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<%= request.getContextPath() %>/location">오시는 길</a>
                </li>
                <%
                    String loggedInUser = (String) session.getAttribute("loggedInUser");
                    if (loggedInUser != null) {
                %>
                    <li class="nav-item">
                        <a class="nav-link" href="<%= request.getContextPath() %>/user/info">회원정보</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<%= request.getContextPath() %>/user/myPosts">나의 게시글</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<%= request.getContextPath() %>/logout">로그아웃</a>
                    </li>
                    <li class="nav-item">
                        <span class="navbar-text">환영합니다, <%= loggedInUser %>!</span>
                    </li>
                <%
                    } else {
                %>
                    <li class="nav-item auth-link">
                        <a class="nav-link" href="<%= request.getContextPath() %>/login">로그인</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<%= request.getContextPath() %>/register">회원가입</a>
                    </li>
                <%
                    }
                %>
            </ul>
        </div>
    </nav>
    
    <div class="container">
        <div class="jumbotron">
            <h1 class="display-4">환영합니다!</h1>
            <p class="lead">학과 웹페이지에 오신 것을 환영합니다. 이곳에서 학과 소개, 교과과정, 커뮤니티 활동 등을 확인하실 수 있습니다.</p>
            <hr class="my-4">
            <p>더 많은 정보를 원하시면 각 메뉴를 클릭해 주세요.</p>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

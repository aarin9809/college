<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .navbar-nav .nav-item .nav-link {
            color: #555;
        }
        .navbar-nav .nav-item .nav-link:hover {
            background-color: #ddd;
            border-radius: 5px;
        }
        .home-button {
            position: fixed;
            top: 10px;
            left: 10px;
            z-index: 1000;
            background-color: #007bff;
            color: white;
            padding: 10px 15px;
            text-decoration: none;
            border-radius: 5px;
        }
        .home-button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="<%= request.getContextPath() %>/">학과 웹페이지</a>
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
</body>
</html>

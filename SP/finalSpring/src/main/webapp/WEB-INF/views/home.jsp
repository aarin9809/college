<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        nav {
            margin: 20px;
        }
        ul {
            list-style-type: none;
            padding: 0;
        }
        li {
            position: relative;
            display: inline-block;
            margin: 0 20px;
        }
        li a {
            text-decoration: none;
            padding: 10px 20px;
            display: block;
            color: #333;
        }
        li ul {
            display: none;
            position: absolute;
            top: 100%;
            left: 0;
            background-color: #fff;
            box-shadow: 0 8px 16px rgba(0,0,0,0.2);
            z-index: 1;
        }
        li:hover ul {
            display: block;
        }
        li ul li {
            display: block;
            margin: 0;
        }
        li ul li a {
            padding: 10px 20px;
        }
        li ul li a:hover {
            background-color: #f1f1f1;
        }
    </style>
</head>
<body>
    <nav>
        <ul>
            <li>
                <a href="#">학과안내</a>
                <ul>
                    <li><a href="departIntroduction.jsp">학과소개</a></li>
                    <li><a href="departHistory.jsp">학과연혁</a></li>
                </ul>
            </li>
            <li><a href="curriculum.jsp">교과과정</a></li>
            <li><a href="community.jsp">커뮤니티</a></li>
            <li><a href="contact.jsp">오시는 길</a></li>
        </ul>
    </nav>
</body>
</html>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.PreparedStatement" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>리뷰 수정</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="main.html">영화 공유 리뷰 사이트</a>
    </nav>
    <div class="container mt-3">
        <h1 class="text-center">리뷰 수정</h1>
        <%
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            String db_address = "jdbc:mysql://localhost:3306/board";
            String db_username = "root";
            String db_pwd = "rootpw";
            Connection connection = DriverManager.getConnection(db_address, db_username, db_pwd);
            
            request.setCharacterEncoding("UTF-8");
            
            String num = request.getParameter("num");
            
            String insertQuery = "SELECT * FROM board.post WHERE num=" + num;
            
            PreparedStatement psmt = connection.prepareStatement(insertQuery);
            
            ResultSet result = psmt.executeQuery();
            
            while(result.next())
            {%>
                <form action="post_modify_send.jsp" method="post">
                    <input type="hidden" name="num" value="<%=result.getInt("num") %>">
                    <div class="form-group">
                        <label for="writer">작성자</label>
                        <input type="text" class="form-control" id="writer" name="writer" value="<%=result.getString("writer") %>">
                    </div>
                    <div class="form-group">
                        <label for="title">제목</label>
                        <input type="text" class="form-control" id="title" name="title" value="<%=result.getString("title") %>">
                    </div>
                    <div class="form-group">
                        <label for="content">내용</label>
                        <textarea class="form-control" id="content" rows="10" name="content"><%=result.getString("content") %></textarea>
                    </div>
                    <div class="form-group">
                        <button type="submit" class="btn btn-primary">수정</button>
                        <button type="button" class="btn btn-secondary" onclick="location.href='post_list.jsp'">목록으로</button>
                        <button type="reset" class="btn btn-danger">원상복구</button>
                    </div>
                </form>
        <%
            }
        }
        catch (Exception ex)
        {
        	out.println("오류가 발생했습니다. 오류 메시지 : " + ex.getMessage());
        }%>
    </div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>

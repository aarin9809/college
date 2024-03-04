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
<title>리뷰 상세 열람</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="main.html">영화 공유 리뷰 사이트</a>
    </nav>
    <div class="container mt-3">
        <h1 class="text-center">리뷰 상세 열람</h1>
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
        %>
            
            <div class="table-responsive">
                <table class="table table-bordered table-hover">
                    <%
                    while(result.next())
                    {%>
                        <tr>
                            <th>번호</th>
                            <td><%=result.getInt("num") %></td>
                        </tr>
                        <tr>
                            <th>작성일</th>
                            <td><%=result.getTimestamp("reg_date") %></td>
                        </tr>
                        <tr>
                            <th>작성자</th>
                            <td><%=result.getString("writer") %></td>
                        </tr>
                        <tr>
                            <th>제목</th>
                            <td><%=result.getString("title") %></td>
                        </tr>
                        <tr>
                            <th>내용</th>
                            <td><%=result.getString("content") %></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <button type="button" class="btn btn-primary" onclick="location.href='post_list.jsp'">목록으로</button>
                            </td>
                        </tr>
                        <%            	
                    }%>
                </table>
            </div>
            <%
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

<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.Connection" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>리뷰 목록</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="main.html">영화 공유 리뷰 사이트</a>
    </nav>
    <div class="container mt-3">
        <h1 class="text-center">리뷰 목록</h1>
        <form action="post_read.jsp" method="get">
            <%
                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    String db_address = "jdbc:mysql://localhost:3306/board";
                    String db_username = "root";
                    String db_pwd = "rootpw";
                    
                    Connection connection = DriverManager.getConnection(db_address, db_username, db_pwd);
                    
                    String insertQuery = "SELECT * FROM board.post order by num desc";
                    PreparedStatement psmt = connection.prepareStatement(insertQuery);
                    ResultSet result = psmt.executeQuery();
            %>
                    
                    <div class="table-responsive">
                        <table class="table table-bordered table-hover">
                            <thead class="thead-dark">
                            <tr>
                                <th colspan="5" class="text-center">리뷰 제목 클릭시 상세 열람 가능</th>
                            </tr>
                            <tr>
                                <th colspan="5" class="text-center">
                                    <button type="button" class="btn btn-primary" onClick="location.href='post_new.jsp'">신규 글 작성</button>
                                </th>
                            </tr>
                            <tr>
                                <th>번호</th>
                                <th>작성자</th>
                                <th>제목</th>
                                <th>작성일</th>
                                <th>관리</th>
                            </tr>
                            </thead>
                            <tbody>
                            <%
                            while (result.next())
                            {%>
                                <tr>
                                    <td><%=result.getInt("num") %></td>
                                    <td><%=result.getString("writer") %></td>
                                    <td><a href="post_read.jsp?num=<%=result.getInt("num") %>"><%=result.getString("title") %></a></td>
                                    <td><%=result.getTimestamp("reg_date") %></td>
                                    <td>
                                        <button type="button" class="btn btn-secondary btn-sm" onClick="location.href='post_modify.jsp?num=<%=result.getString("num") %>'">수정</button>
                                        <button type="button" class="btn btn-danger btn-sm" onClick="location.href='post_delete_send.jsp?num=<%=result.getString("num") %>'">삭제</button>
                                    </td>
                                </tr>
                            <%
                            }%>
                            </tbody>
                        </table>
                    </div>
            <%
                }
                catch (Exception ex)
                {
                    out.println("오류가 발생했습니다. 오류 메시지 : " + ex.getMessage());
                }
            %>
        </form>
    </div>

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>

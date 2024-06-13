<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>Format 라이브러리</h3>
	<c:set var="date" value="<%=new Date() %>" />	
	[오늘 날짜] <fmt:formatDate value="${date }"/><br>
	[현재 시각] <fmt:formatDate value="${date }" type="time"/>

	<hr>	

	[오늘 날짜] <fmt:formatDate value="${date }" pattern="yyyy-MM/dd(E)"/><br>
	[현재 시각] <fmt:formatDate value="${date }" type="time" pattern="(a)hh-mm-ss"/>

	<hr>

	금액 : <fmt:formatNumber value="100000000" type="currency" currencySymbol="$"/>
	퍼센트 : <fmt:formatNumber value="0.95" type="percent" />

	<hr>

	<fmt:setLocale value="en"/>
	지역 설정 변경 : 미국 <br>
	[오늘 날짜] <fmt:formatDate value="${date }"/><br>
	[현재 시각] <fmt:formatDate value="${date }" type="time"/>

	<hr>

	<fmt:setLocale value="ja_jp"/>
	지역 설정 변경 : 일본 <br>
	[오늘 날짜] <fmt:formatDate value="${date }"/><br>
	[현재 시각] <fmt:formatDate value="${date }" type="time"/>
	
</body>
</html>
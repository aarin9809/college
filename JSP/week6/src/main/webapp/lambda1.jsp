<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>람다식 예제</h3>
	1. 두 개의 숫자 중 큰 수 찾기<br>
	${max = (x,y) -> x > y ? x : y }<br>
	(3,5) 중 큰 수 = ${max(3,5) }<br><br>
	
	2. 두 문자열이 같은지 체크하기<br>
	${strEQ = (s1, s2) -> s1 == s2? true : false ;'' }
	("admin", "홍길동") 두 문자열이 같은가? ${strEQ("admin", "홍길동") }<br>
	
	
	3. 피타고라스의 정리<br>
	${func = (a, b) -> Math.sqrt(a*a + b*b); '' }<br>
	두 변의 길이가 3, 4인 직각삼각형의 빗변의 길이 = ${func(3,4) }<br>
	
	4. 재귀호출 - 팩토리얼 <br>
	${fact = (n) -> n==1? 1 : fact(n-1) ; '' }
	5! = ${fact(5)  }
	
</body>
</html>
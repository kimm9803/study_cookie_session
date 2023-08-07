<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 요청 정보에서 세션 데이터를 가져와서 화면에 아이디 출력 -->
	<%
		session = request.getSession();
		out.print(session.getAttribute("memberId") + "님 환영합니다!" + "<br>");
	%>
	
	<form action="LogoutSession" method="post">
		<input type="submit" value="logout">
	</form>
</body>
</html>
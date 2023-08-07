<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- session 유무를 판단하여 있으면 로그인 된 화면으로 바로 redirect -->
	<%
		if (session.getAttribute("memberId") != null) {
			response.sendRedirect("loginSessionOk.jsp");
		}
	%>
	<form action="LoginSession" method="post">
		ID : <input type="text" name="mID"><br>
		PW : <input type="password" name="mPW"><br>
		<input type="submit" value="login">
	</form>
</body>
</html>
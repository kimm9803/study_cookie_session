<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies();
		System.out.println("cookies : " + cookies);
		
		// memberId 쿠키가 있으면 로그인 되어있는 상태이기 때문에 loginOk.jsp 로 sendRedirect 한다
		if (cookies != null) {
			for (Cookie c : cookies) {
				if (c.getName().equals("memberId")) {
					response.sendRedirect("loginOk.jsp");
				}
			}
		}
	%>
	<form action="loginCon" method="post">
		ID : <input type="text" name="mID"><br>
		PW : <input type="password" name="mPW"><br>
		<input type="submit" value="login">
	</form>
</body>
</html>
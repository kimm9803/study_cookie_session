package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/loginCon")
public class loginCon extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		
		String mId = request.getParameter("mID");
		String mPw = request.getParameter("mPW");
		
		out.print("mId : " + mId);
		out.print("mPw : " + mPw);
		
		// 쿠키는 브라우저에 저장됨.
		// 사용자로부터 쿠키를 가져온 것
		// 여러개의 쿠키가 있을 수 있기 때문에 배열로 반환
		Cookie[] cookies = request.getCookies();
		Cookie cookie = null;
		
		// 쿠키 전체 조회 -> memberId 라는 이름을 가진 쿠키가 있으면 쿠키 객체 초기화
		for (Cookie c : cookies) {
			System.out.println("c.getName() : " + c.getName());
			System.out.println("c.getValue() : " + c.getValue());
			
			if (c.getName().equals("memberId")) {
				cookie = c;
			}
		}
		
		// 쿠키가 없다면 새로 생성 -> 사용자가 입력한 id값으로 쿠키를 만듦
		if (cookie == null) {
			System.out.println("cookie is null");
			cookie = new Cookie("memberId", mId);
		}
		
		response.addCookie(cookie);
		// 1시간으로 유효기간 지정
		cookie.setMaxAge(60 * 60);
		
		response.sendRedirect("loginOk.jsp");
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

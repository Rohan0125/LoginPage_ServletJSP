package com.loginexample;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Login")
public class Login extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname = request.getParameter("username");
		String pass = request.getParameter("password");
		
		if(uname.equals("Rohan")&& pass.equals("asdf")) {
			HttpSession session = request.getSession();
			session.setAttribute("uname", uname);
			response.sendRedirect("welcome.jsp");
		}else {
			request.setAttribute("error", "please enter correct username or password");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
	}

}

package com.loginexample;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.loginexample.dao.*;
@WebServlet("/Registration")
public class Registration extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RegistrationDAO register = new RegistrationDAO();
		if(register.check(request.getParameter("username"))) {
			register.addUser((String)request.getParameter("fullname"), (String) request.getParameter("email"), (String) request.getParameter("password"),(String) request.getParameter("username"));
			request.setAttribute("message", "your account created, login to procced");
			request.getRequestDispatcher("login.jsp");
		}else {
			request.setAttribute("error", "username already in use, use diffrent username");
			request.getRequestDispatcher("registration.jsp").forward(request, response);;
		}
	}

}

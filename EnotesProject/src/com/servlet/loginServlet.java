package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Dao.UserDao;
import com.Db.DBConnect;

import com.user.UserDetails;

@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("uemail");
		String password = request.getParameter("upassword");

		UserDetails us = new UserDetails();
		us.setEmail(email);
		us.setPassword(password);

		UserDao dao = new UserDao(DBConnect.getConn());
		UserDetails user = dao.loginUser(us);
		

		if (user != null) {
			HttpSession session=request.getSession();
			session.setAttribute("UserD", user);

			response.sendRedirect("home.jsp");
		} else {

			HttpSession session = request.getSession();
			session.setAttribute("failed-msg", "Invalid email/password");
			response.sendRedirect("login.jsp");
		}

	}
}
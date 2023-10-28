package net.admin.categorymanagement.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.admin.categorymanagement.dao.UserDao;
import net.admin.categorymanagement.model.User;
import net.admin.login.connection.DbCon;


@WebServlet("/user-login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		try (PrintWriter out = response.getWriter()) {
			String email = request.getParameter("login-email");
			String password = request.getParameter("login-password");

			UserDao udao = new UserDao(DbCon.getConnection());
			User Customer = udao.userLogin(email, password);
			if (Customer != null) {
				request.getSession().setAttribute("auth", Customer);
//				System.out.print("user logged in");
				response.sendRedirect("welcome.jsp");
			} else {
				out.println("there is no customer");
			}

		} catch (ClassNotFoundException|SQLException e) {
			e.printStackTrace();
		} 

	}
}
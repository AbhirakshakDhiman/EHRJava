package com.user.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import com.dao.UserDao;
import com.db.DBconnect;
import com.entity.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/userSignup")
public class UserSignup extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	try {
		String name=req.getParameter("fullname");
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		
		User u=new User(name,email,password);
		
		UserDao ud=new UserDao(DBconnect.getCon());
		HttpSession session=req.getSession();
		
		boolean f=ud.register(u);
		if(f) {
		session.setAttribute("sucMsg","Register Sucessfully");
		
		resp.sendRedirect("signup.jsp");
		}
		else {
			session.setAttribute("errormsg", "Register unsuccessfull");
			resp.sendRedirect("signup.jsp");;
		}
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	}

}

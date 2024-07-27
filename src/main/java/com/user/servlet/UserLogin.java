package com.user.servlet;

import java.io.IOException;

import com.dao.UserDao;
import com.db.DBconnect;
import com.entity.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/userLogin")
public class UserLogin extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			
				String email=req.getParameter("email");
				String password=req.getParameter("password");
				
				HttpSession session=req.getSession();
				
				UserDao dao=new UserDao(DBconnect.getCon());
				
				User user=dao.login(email, password);
				
				if(user!=null) {
				session.setAttribute("userObj",user);
				resp.sendRedirect("index.jsp");
				}
				else {
					session.setAttribute("errormsg", "invalid email or password");
					resp.sendRedirect("user_login.jsp");
				}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
	}

}

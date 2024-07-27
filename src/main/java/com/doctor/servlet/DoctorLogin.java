package com.doctor.servlet;

import java.io.IOException;

import com.dao.DoctorDao;

import com.db.DBconnect;
import com.entity.Doctor;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/doctorLogin")
public class DoctorLogin extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try{String email=req.getParameter("email");
		String password=req.getParameter("password");
		
		HttpSession session=req.getSession();
		
		DoctorDao dao=new DoctorDao(DBconnect.getCon());
		
		Doctor doct=dao.login(email, password);
		
		if(doct!=null) {
		session.setAttribute("docObj",doct);
		resp.sendRedirect("doctor/index.jsp");
		}
		else {
			session.setAttribute("errormsg", "invalid email or password");
			resp.sendRedirect("doctor_login.jsp");
		}
}
catch(Exception e){
	e.printStackTrace();
}

	}

}

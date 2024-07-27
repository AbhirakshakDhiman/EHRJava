package com.user.servlet;

import java.io.IOException;

import com.dao.AppointmentDao;

import com.db.DBconnect;
import com.entity.Appointment;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/addAppointment")
public class AppointmentServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			
			int userid=Integer.parseInt(req.getParameter("userid"));
			String fullname=req.getParameter("fullname");
			String gender=req.getParameter("gender");
			String age=req.getParameter("age");
			String appdate=req.getParameter("appdate");
			String email=req.getParameter("email");
			String dis=req.getParameter("diseases");
			String mob=req.getParameter("mob");
			int docid=Integer.parseInt(req.getParameter("doct"));
			String address=req.getParameter("address");
			
			System.out.println(userid);
			System.out.println(docid);
			HttpSession session=req.getSession();
			
			AppointmentDao dao=new AppointmentDao(DBconnect.getCon());
			
			Appointment ap=new Appointment(userid, fullname, gender, age, appdate, email,  mob,dis, docid, address, "pending");
			if(dao.addAppointment(ap)) {
				session.setAttribute("sucMsg","Register Sucessfully");
				
				resp.sendRedirect("user_appointment.jsp");
				}
				else {
					session.setAttribute("errormsg", "Register unsuccessfull");
					resp.sendRedirect("user_appointment.jsp");
				
			}
			
	}
	catch(Exception e){
		e.printStackTrace();
	}
	}

}

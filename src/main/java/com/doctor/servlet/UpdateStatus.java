package com.doctor.servlet;

import java.io.IOException;

import com.dao.AppointmentDao;
import com.db.DBconnect;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/updateStatus")
public class UpdateStatus extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			int id=Integer.parseInt(req.getParameter("id"));
			int did=Integer.parseInt(req.getParameter("did"));
			
			String com=req.getParameter("comment");
			
			AppointmentDao dao=new AppointmentDao(DBconnect.getCon());
			
			HttpSession session=req.getSession();
			
			if(dao.updateStatus(id, did, com)) {
				session.setAttribute("sucMsg", "Comment Updated");
				resp.sendRedirect("doctor/patient.jsp");
				
			}else {
				session.setAttribute("errormsg", "Comment  Updated Failed");
				resp.sendRedirect("doctor/patient.jsp");
			}
			
		}catch(Exception e){
			
		}
		
	}

}

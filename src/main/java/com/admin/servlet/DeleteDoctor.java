package com.admin.servlet;

import java.io.IOException;

import com.dao.DoctorDao;
import com.db.DBconnect;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/deleteDoctor")
public class DeleteDoctor extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;



	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
try {
			
		
			
			int id=Integer.parseInt(req.getParameter("id"));
			
			DoctorDao dao=new DoctorDao(DBconnect.getCon());
			
			HttpSession session=req.getSession();
			if(dao.deleteDoctor(id)) {
				session.setAttribute("sucMsg", "Doctor Deleted Successfully");
				resp.sendRedirect("admin/doctor.jsp");
			}
			else {
				session.setAttribute("errormsg", "Something wrog on server");
				resp.sendRedirect("admin/doctor.jsp");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}

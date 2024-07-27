package com.admin.servlet;

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

@WebServlet("/updateDoctor")
public class UpdateDoctor extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
try {
			
			String fullname= req.getParameter("fullname");
			String dob= req.getParameter("dob");
			String quali= req.getParameter("quali");
			String spec= req.getParameter("spec");
			String email= req.getParameter("email");
			String mob= req.getParameter("mob");
			String pass= req.getParameter("pass");
			//System.out.println(fullname+"\t"+email);
			
			int id=Integer.parseInt(req.getParameter("id"));
			
			Doctor d=new Doctor(id,fullname,dob,quali,spec,email,mob,pass);
			
			DoctorDao dao=new DoctorDao(DBconnect.getCon());
			
			HttpSession session=req.getSession();
			if(dao.updateDoctor(d)) {
				session.setAttribute("sucMsg", "Doctor updated Successfully");
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

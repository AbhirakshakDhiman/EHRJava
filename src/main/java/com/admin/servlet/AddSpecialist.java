package com.admin.servlet;

import java.io.IOException;

import com.dao.SpecialistDao;
import com.db.DBconnect;
//import com.entity.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/addSpecialist")
public class AddSpecialist extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String spec=req.getParameter("spec_name");
	try {	
		SpecialistDao dao=new SpecialistDao(DBconnect.getCon());
		boolean f=dao.addSpecialist(spec);
		HttpSession session=req.getSession();
		if(f) {
		session.setAttribute("sucMsg","Specialist Added");
		resp.sendRedirect("admin/index.jsp");
		}
		else {
			session.setAttribute("errormsg", "Something wrog on server");
			resp.sendRedirect("admin_login.jsp");
		}
}
catch(Exception e){
	e.printStackTrace();
}
	}

}

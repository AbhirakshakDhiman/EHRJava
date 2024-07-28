<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
            <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ page import="com.dao.SpecialistDao"%>
<%@ page import="com.entity.Appointment"%>
<%@ page import="com.entity.User"%>
<%@ page import="com.db.DBconnect"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.AppointmentDao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="../component/allcss.jsp"%>
</head>
<body>
<%@include file="navbar.jsp"%>

<div class="container p-3">
		<div class="row">
<div class="col-md-12">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center"> All Appointments</p>
				
						<table class="table">
							<thead>
								<tr>
									<th scope="col">Full Name</th>
									<th scope="col">Gender</th>
									<th scope="col">Age</th>
									<th scope="col">Appointment</th>
									<th scope="col">Email</th>
									<th scope="col">Mob no</th>
									<th scope="col">Diseases</th>
									<th scope="col">Status</th>
								</tr>
							</thead>
							<tbody>
                            <%
                            AppointmentDao dao=new AppointmentDao(DBconnect.getCon());
                            List<Appointment> l=dao.getAllAppointmentOfUsers();
                            for(Appointment ap: l){
                            	%>
                            	
                            	<tr>
                            	<td><%=ap.getFullname() %></td>
                            	<td><%=ap.getGender() %></td>
                            	<td><%=ap.getAge() %></td>
                            	<td><%=ap.getAppdate() %></td>
                            	<td><%=ap.getEmail() %></td>
                            	<td><%=ap.getMob() %></td>
                            <td><%=ap.getDiseases() %></td>
                            	<td><%=ap.getStatus() %></td>
                            	
                            	</tr>
                           <% }
                            %>
							</tbody>
						</table>
					</div>
				</div>
			</div>

		</div>
	</div>

</body>
</html>
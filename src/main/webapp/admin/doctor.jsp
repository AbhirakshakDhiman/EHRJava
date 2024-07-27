<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ page import="com.dao.SpecialistDao"%>
<%@ page import="com.entity.Specialist"%>
<%@ page import="com.entity.Doctor"%>
<%@ page import="com.db.DBconnect"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.DoctorDao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="../component/allcss.jsp"%>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<div class="container-fluid p-3">
		<div class="row">


			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center">Add Doctor</p>
						<c:if test="${not empty sucMsg }">
							<p class="text-center text-success fs-3">${sucMsg }</p>
							<c:remove var="sucMsg" scope="session" />
						</c:if>
						<c:if test="${not empty errormsg }">
							<p class="text-center text-success fs-3">${errormsg }</p>
							<c:remove var="errormsg" scope="session" />
						</c:if>

						<form action="../addDoctor" method="post">
							<div class="mb-3">
								<label class="form-label">Full Name</label> <input type="text"
									class="form-control" name="fullname" required>
							</div>
							<div class="mb-3">
								<label class="form-label">Dob</label> <input type="date"
									class="form-control" name="dob" required>
							</div>
							<div class="mb-3">
								<label class="form-label">Qualification</label> <input
									type="text" class="form-control" name="quali" required>
							</div>
							<div class="mb-3">
								<label class="form-label">Specialist</label> <select
									class="form-control" name="spec" required>
									<option>---select---</option>
									<%
									SpecialistDao dao = new SpecialistDao(DBconnect.getCon());
									List<Specialist> list = dao.getAllSpecialist();
									for (Specialist s : list) {
									%>
									<option><%=s.getSpecialistName()%></option>
									<%
									}
									%>

								</select>
								<div class="mb-3">
									<label class="form-label">Email</label> <input type="email"
										class="form-control" name="email" required>
								</div>
								<div class="mb-3">
									<label class="form-label">Mob No</label> <input type="text"
										class="form-control" name="mob" required>
								</div>
								<div class="mb-3">
									<label class="form-label">Password</label> <input
										type="password" class="form-control" name="pass" required>
								</div>
							</div>
							<button type="submit" class="btn btn-primary">Submit</button>
						</form>
					</div>
				</div>
			</div>
			


			<div class="col-md-8">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center">Doctor Details</p>
						<table class="table">
							<thead>
								<tr>
									<th scope="col">Full Name</th>
									<th scope="col">DOB</th>
									<th scope="col">Qualification</th>
									<th scope="col">Specialist</th>
									<th scope="col">Email</th>
									<th scope="col">Mob No</th>
									<th scope="col">Action</th>
								</tr>
							</thead>
							<tbody>
                            <%
                            DoctorDao dao2=new DoctorDao(DBconnect.getCon());
                            List<Doctor> l=dao2.getAllDoctors();
                            for(Doctor d:l){
                            	%>
                            	
                            	<tr>
                            	<td><%=d.getFullname() %></td>
                            	<td><%=d.getDob() %></td>
                            	<td><%=d.getQuali() %></td>
                            	<td><%=d.getSpecialist() %></td>
                            	<td><%=d.getEmail() %></td>
                            	<td><%=d.getMobno() %></td>
                            
                            	<td><a href="edit_doctor.jsp?id=<%=d.getId()%>" class="btn btn-sm btn-primary">Edit</a>
                            	<a href="../deleteDoctor?id=<%=d.getId()%>" class="btn btn-sm btn-danger">Remove</a></td>
                            	
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
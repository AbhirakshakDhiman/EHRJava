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


			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center">Edit Doctor Details</p>
						<c:if test="${not empty sucMsg }">
							<p class="text-center text-success fs-3">${sucMsg }</p>
							<c:remove var="sucMsg" scope="session" />
						</c:if>
						<c:if test="${not empty errormsg }">
							<p class="text-center text-success fs-3">${errormsg }</p>
							<c:remove var="errormsg" scope="session" />
						</c:if>
<%
int id=Integer.parseInt(request.getParameter("id"));
DoctorDao dao=new DoctorDao(DBconnect.getCon());
Doctor d=dao.getDoctorById(id);

%>
						<form action="../updateDoctor" method="post">
							<div class="mb-3">
								<label class="form-label">Full Name</label> <input type="text"
									class="form-control" name="fullname" value="<%=d.getFullname() %>" required>
							</div>
							<div class="mb-3">
								<label class="form-label">Dob</label> <input type="date"
									class="form-control" name="dob" value="<%=d.getDob() %>" required>
							</div>
							<div class="mb-3">
								<label class="form-label">Qualification</label> <input
									type="text" class="form-control" name="quali" value="<%=d.getQuali() %>" required>
							</div>
							<div class="mb-3">
								<label class="form-label">Specialist</label> <select
									class="form-control" name="spec" required>
									<option><%=d.getSpecialist() %></option>
							
									
	<%
									SpecialistDao dao2 = new SpecialistDao(DBconnect.getCon());
									List<Specialist> list = dao2.getAllSpecialist();
									for (Specialist s : list) {
									%>
									<option><%=s.getSpecialistName()%></option>
									<%
									}
									%>
								</select>
								<div class="mb-3">
									<label class="form-label">Email</label> <input type="email"
										class="form-control" name="email" value="<%=d.getEmail() %>"required>
								</div>
								<div class="mb-3">
									<label class="form-label">Mob No</label> <input type="text"
										class="form-control" name="mob" value="<%=d.getMobno() %>"required>
								</div>
								<div class="mb-3">
									<label class="form-label">Password</label> <input
										type="password" class="form-control" name="pass" value="<%=d.getPassword() %>"required>
								</div>
							</div>
							<input type="hidden" name="id" value="<%=d.getId() %>">
							<button type="submit" class="btn btn-primary col-md-12">Update</button>
						</form>
					</div>
				</div>
			</div>
			


			
			
			</div>

		</div>
	
</body>
</html>
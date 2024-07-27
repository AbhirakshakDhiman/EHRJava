<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ page import="com.dao.SpecialistDao"%>
<%@ page import="com.entity.Specialist"%>
<%@ page import="com.entity.Doctor"%>
<%@ page import="com.db.DBconnect"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.DoctorDao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User</title>
<%@include file="component/allcss.jsp"%>
<style type="text/css">
.backImg {
	backgroung: linear-gradient(rgba(0, 0, 0, 0), rgba(0, 0, 0, -4)),
		url("img/hosp.jpeg");
	height: 20vh;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
}
</style>
</head>
<body>
	<%@include file="component/navbar.jsp"%>
	<div class="container-fluid backImg p-5">
		<p class="text-center fs-2 text-white"></p>
	</div>

	<div class="container p-3">
		<div class="row">
			<div class="col-md-6 p-5">
				<img alt="" src="img/doc1.jpeg">
			</div>
			<div class="col-md-6">
				<div class="card paint-card">
					<div class="card-body">
						<p class="text-center fs-3">User Appointment</p>
						<c:if test="${not empty sucMsg }">
							<p class="text-center text-success fs-3">${sucMsg }</p>
							<c:remove var="sucMsg" scope="session" />
						</c:if>
						<c:if test="${not empty errormsg }">
							<p class="text-center text-success fs-3">${errormsg }</p>
							<c:remove var="errormsg" scope="session" />
						</c:if>
						<form class="row g-3" action="addAppointment" method="post">
							<input type="hidden" name="userid" value="${userObj.id}">
							<div class="col-md-6">
								<label class="form-label">Full Name</label> <input type="text"
									class="form-control" name="fullname" required>
							</div>
							<div class="col-md-3">
								<label class="form-label">Age</label> <input type="number"
									class="form-control" name="age" required>
							</div>
							<div class="col-md-6">
								<label class="form-label">Appointment Date</label> <input
									type="date" class="form-control" name="appdate" required>
							</div>
							<div class="col-md-6">
								<label class="form-label">Gender</label> <select
									class="form-control" name="gender" required>
									<option>Male</option>
									<option>Female</option>

								</select>
							</div>
							<div class="col-md-6">
								<label class="form-label">Email</label> <input type="email"
									class="form-control" name="email" required>
							</div>
							<div class="col-md-6">
								<label class="form-label">Mob No</label> <input type="number"
									maxlength="10" class="form-control" name="mob" required>
							</div>
							<div class="col-md-6">
								<label class="form-label">Diseases</label> <input type="text"
									class="form-control" name="diseases" required>
							</div>
							<div class="col-md-6">
								<label class="form-label">Doctor</label> <select
									class="form-control" name="doct" required>
									<option>--Select--</option>
									<%
									DoctorDao dao = new DoctorDao(DBconnect.getCon());
									List<Doctor> list = dao.getAllDoctors();
									for (Doctor d : list) {
									%>
									<option value="<%=d.getId()%>"><%=d.getFullname()%>(<%=d.getSpecialist()%>)
									</option>
									<%
									}
									%>

								</select>
							</div>
							<div class="col-md-12">
								<label class="form-label">Address</label>
								<textarea class="form-control" name="address" required></textarea>
							</div>
							<c:if test="${ empty userObj }">
								<a href="user_login.jsp"
									class="col-md-6 offset-md-3 btn btn-success">Submit</a>

							</c:if>
							<c:if test="${not empty userObj }">
								<button type="submit"
									class="col-md-6 offset-md-3 btn btn-primary">Submit</button>

							</c:if>

						</form>
					</div>
				</div>
			</div>

		</div>
	</div>
</body>
</html>
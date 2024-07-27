<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ page import="com.entity.Appointment"%>
<%@ page import="com.entity.Doctor"%>
<%@ page import="com.db.DBconnect"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.AppointmentDao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="../component/allcss.jsp" %>
<style type="text/css">
.backImg {
	backgroung: linear-gradient(rgba(0, 0, 0, 0), rgba(0, 0, 0, -4)),
		url("img/doc1.jpeg");
	height: 20vh;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
}
</style>
</head>
<body>
<c:if test="${empty docObj }">
<c:redirect url="../doctor_login.jsp"></c:redirect>
</c:if>
<%@include file="navbar.jsp" %>

<div class="container-fluid backImg p-5">
		<p class="text-center fs-2 text-white"></p>
	</div>

	<div class="container p-3">
		<div class="row">
			
			<div class="col-md-6 offset-md-3">
				<div class="card paint-card">
					<div class="card-body">
						<p class="text-center fs-4">Patient Comment</p>
						
						<% int id=Integer.parseInt(request.getParameter("id"));
						AppointmentDao dao=new AppointmentDao(DBconnect.getCon());
						
						Appointment ap=dao.getAppointmentById(id);
						%>
						
						
						<form class="row" action="../updateStatus" method="post">
							<input type="hidden" name="userid" value="${userObj.id}">
							<div class="col-md-6">
								<label class="form-label">Patient Name</label> <input type="text"
									readonly class="form-control" value="<%=ap.getFullname()%>">
							</div>
							<div class="col-md-6">
								<label class="form-label">Age</label> <input type="text"
								readonly	class="form-control" value="<%=ap.getAge()%>">
							</div>
					
						
		
							<div class="col-md-6">
								<label class="form-label">Mob No</label> <input type="text" readonly
									 class="form-control" value="<%=ap.getMob()%>">
							</div>
							<div class="col-md-6">
								<label class="form-label">Diseases</label> <input type="text" readonly
									class="form-control" value="<%=ap.getDiseases()%>" >
					</div>
							<div class="col-md-12">
								<label class="form-label">comment</label>
								<textarea class="form-control" name="comment" required></textarea>
							</div>
						<input type="hidden" name="id" value="<%=ap.getId()%>">	<input type="hidden" name="did" value="<%=ap.getDoctorId()%>">
								<button type="submit"
									class="col-md-6 offset-md-3 btn btn-primary">Submit</button>


						</form>
					</div>
				</div>
			</div>

		</div>
	</div>

</body>
</html>
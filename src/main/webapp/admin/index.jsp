<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Panel</title>
<%@include file="../component/allcss.jsp" %>
<style type="text/css">
.paint-card{
box-shadow:0 0 10px 0 rgba(0,0,0,0.3)
}
</style>
</head>
<body>
<%@include file="navbar.jsp" %>

<div class="container p-5">
<div class="row">
<div class="col-md-6 ">
<div class="card paint-card">
<div class="card-body text-center text-success">
<i class="fas fa-user-md fa-3x"></i><br>
<p class="fs-4 text-center">
Doctor<br>12
</p>
</div>
</div>
</div>



<div class="col-md-6">
<div class="card paint-card">
<div class="card-body text-center text-success">
<i class="fa-solid fa-notes-medical fa-3x"></i><br>
<p class="fs-4 text-center">
Total Appointment<br>129
</p>
</div>
</div>
</div>


<div class="col-md-6">
<div class="card paint-card">
<div class="card-body text-center text-success">
<i class="fa-solid fa-address-book fa-3x"></i><br>
<p class="fs-4 text-center">
Total Users<br>124
</p>
</div>
</div>
</div>

<div class="col-md-6">
<div class="card paint-card" data-bs-toggle="modal" data-bs-target="#exampleModal">
<div class="card-body text-center text-success">
<i class="fa-solid fa-stethoscope fa-3x"></i><br>
<p class="fs-4 text-center">
Specialist<br>8
</p>
</div>
</div>
</div>
  </div>
</div>







<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
       <form action="../addSpecialist" method="post">
       <div class="form-group">
       <label>Enter specialist name</label><input type="text" name="spec_name" class="form-control">
       </div>
       <div class="text-center mt-3">
       <button type="submit" class="btn btn-primary">Add</button>
       </div>
       </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="../component/allcss.jsp" %>

</head>
<body>
<%@include file="navbar.jsp" %>

<div class="container p-5">
<h1 class="text-center fs-3 fw-bolder">Admin Dashboard</h1>
<div class="row row-cols-1 row-cols-md-2 g-4">
  <div class="col">
    <div class="card">
      <img src="..." class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title text-center">Card title</h5>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card">
      <img src="..." class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title text-center">Card title</h5>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card">
      <img src="..." class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title text-center">Card title</h5>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card" data-bs-toggle="modal" data-bs-target="#exampleModal">
      <img src="..." class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title text-center">Specialist</h5>
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
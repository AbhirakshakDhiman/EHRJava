<%@page import="java.sql.Connection" %>
<%@page import="com.db.DBconnect" %>

<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="component/allcss.jsp" %>
</head>
<body>
<%@include file="component/navbar.jsp" %>

<%Connection con=DBconnect.getCon(); 
out.print(con);
%>
<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="img/doc1.jpeg" class="d-block w-100" alt="..." height="500px">
    </div>
    <div class="carousel-item">
      <img src="img/doc2.jpeg" class="d-block w-100" alt="..."  height="500px">
    </div>
    <div class="carousel-item">
      <img src="img/doc3.jpeg" class="d-block w-100" alt="..."  height="500px">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

<div class ="container p-3">
<p class="text-center fs-2">Key Features of Our Hospital </p>

<div class="row row-cols-1 row-cols-md-2 g-4">
  <div class="col">
    <div class="card">

      <div class="card-body">
        <h5 class="card-title">100% Safety</h5>
        <p class="card-text"></p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card">
 
      <div class="card-body">
        <h5 class="card-title">Clean Environment</h5>
        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card">
    
      <div class="card-body">
        <h5 class="card-title">Friendly Doctors</h5>
        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content.</p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card">
     
      <div class="card-body">
        <h5 class="card-title">Medical Research</h5>
        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
      </div>
    </div>
  </div>
</div>
</div>

<div class ="container p-3">
<p class="text-center fs-2">Our Team</p>
<div class="row row-cols-1 row-cols-md-3 g-4">
  <div class="col">
    <div class="card">
      <img src="img/doc5.jpeg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">Dr. Hitesh Kumar</h5>
        <p class="card-text">Head Doctor</p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card">
      <img src="img/doc6.jpeg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">Dr. Ramesh Sharma</h5>
        <p class="card-text">CEO and Chaiman</p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card">
      <img src="img/doc7.jpeg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">Dr. kamal Kumar</h5>
        <p class="card-text"> Supervisor</p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card">
      <img src="img/doc8.jpeg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">Dr. Nidhi Sharma</h5>
        <p class="card-text">HOD Nursing</p>
      </div>
    </div>
  </div>
</div>
</div>
<%@include file="component/footer.jsp" %>
</body>
</html>
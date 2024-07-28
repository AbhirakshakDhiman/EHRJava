<%@page import="java.sql.Connection"%>
<%@page import="com.db.DBconnect"%>

<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="component/allcss.jsp"%>
</head>
<body>
	<%@include file="component/navbar.jsp"%>

	<div id="carouselExampleIndicators" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="img/doc1.jpeg" class="d-block w-100" alt="..."
					height="500px">
			</div>
			<div class="carousel-item">
				<img src="img/doc2.jpeg" class="d-block w-100" alt="..."
					height="500px">
			</div>
			<div class="carousel-item">
				<img src="img/doc3.jpeg" class="d-block w-100" alt="..."
					height="500px">
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>

	<div class="container p-3">
		<p class="text-center fs-2">Key Features of Our Hospital</p>

		<div class="row row-cols-1 row-cols-md-2 g-4">
			<div class="col">
				<div class="card">

					<div class="card-body">
						<h5 class="card-title">100% Safety</h5>
						<p class="card-text">Our hospital adheres to stringent safety
							protocols and best practices to ensure a secure environment for
							all patients and staff. From rigorous infection control measures
							to advanced security systems, we take every precaution to
							safeguard your well-being. Our team is continuously trained to
							respond to emergencies and maintain the highest standards of
							care, so you can trust that you are in safe hands.</p>
					</div>
				</div>
			</div>
			<div class="col">
				<div class="card">

					<div class="card-body">
						<h5 class="card-title">Clean Environment</h5>
						<p class="card-text">We believe that a clean and hygienic
							environment is fundamental to excellent healthcare. Our facility
							is meticulously maintained with state-of-the-art cleaning
							technologies and protocols to ensure a spotless and sterile
							environment. Regular audits and inspections are conducted to
							uphold our rigorous standards. Your comfort and health are our
							priorities, and a pristine environment is key to achieving both.</p>
					</div>
				</div>
			</div>
			<div class="col">
				<div class="card">

					<div class="card-body">
						<h5 class="card-title">Friendly Doctors</h5>
						<p class="card-text">ur team of doctors and healthcare
							professionals is not only highly skilled but also genuinely
							caring. We understand that a hospital visit can be a stressful
							experience, and we strive to make every interaction as comforting
							as possible. Our friendly doctors take the time to listen to your
							concerns, explain your treatment options, and provide
							compassionate care tailored to your needs. We are here to support
							you every step of the way.</p>
					</div>
				</div>
			</div>
			<div class="col">
				<div class="card">

					<div class="card-body">
						<h5 class="card-title">Medical Research</h5>
						<p class="card-text">we are dedicated to advancing medical
							knowledge and improving patient outcomes through cutting-edge
							research. Our hospital actively engages in pioneering medical
							research and clinical trials that contribute to the development
							of new treatments and therapies. By integrating the latest
							scientific advancements into our practice, we ensure that you
							benefit from the most effective and innovative healthcare
							solutions.</p>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="container p-3">
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
						<p class="card-text">Supervisor</p>
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
	<%@include file="component/footer.jsp"%>
</body>
</html>
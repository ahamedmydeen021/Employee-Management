<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>PowerTech Solutions - Power Distribution Company</title>

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom CSS -->
<style>
body {
	background-color: #f8f9fa;
	font-family: 'Arial', sans-serif;
}

.navbar {
}

.navbar a {
	color: white !important;
}

.TopTwo {
	background:
		url('/images/landscape-with-electricity-pylons-power-lines-sunset-industrial-landscape-concept_598586-11 (1).jpg')
		no-repeat center center;
	background-size: cover;
}

.header {
	color: white;
	padding: 30px 0; /* Increased padding */
	text-align: center;
	border-bottom: 10px solid #f28b82;
	background-size: cover;
}

.header h1 {
	font-size: 24px; /* Reduced font size */
	margin-bottom: 10px; /* Reduced margin */
	font-weight: bold; /* Bold text for emphasis */
	text-transform: uppercase;
}

.header p {
	font-size: 10px; /* Reduced font size */
	margin-top: 10px; /* Added space between title and description */
	font-style: italic;
}

.main-links {
	background: blue;
	padding: 60px 0; /* Slightly increased padding */
	text-align: center;
}

.main-links h2 {
	font-size: 24px; /* Increased font size for emphasis */
	color: white;
	margin-bottom: 15px;
	text-transform: uppercase; /* Uppercase letters for bold statement */
}

.main-links .btn {
	margin: 5px; /* Reduced margin */
	padding: 8px 15px; /* Reduced padding */
	font-size: 12px; /* Reduced font size */
	border-radius: 7px;
	text-transform: uppercase;
	transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.main-links .btn-add {
	background-color: #28a745;
	/* Unique color for Add New Employee button (Green) */
	color: white;
}

.main-links .btn-view {
	background-color: #28a745;
	/* Unique color for View Employee button (Red) */
	color: white;
}

.main-links .btn:hover {
	opacity: 0.8;
	transform: scale(1.05); /* Slightly enlarge on hover */
	box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2); /* Shadow on hover */
}

.section-title {
	font-size: 16px; /* Reduced font size */
	text-align: center;
	margin-top: 30px; /* Reduced margin */
	color: #343a40;
}

.footer {
	background-color: #343a40;
	color: white;
	text-align: center;
	padding: 10px; /* Reduced padding */
	position: absolute;
	bottom: 0;
	width: 100%;
}
</style>
</head>
<body>

	<div class="TopTwo">
		<!-- Navbar -->
		<nav class="navbar navbar-expand-lg navbar-dark">
			<div class="container-fluid">
				<a class="navbar-brand" href="#">PowerTech Solutions</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarNav"
					aria-controls="navbarNav" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarNav">
					<ul class="navbar-nav ms-auto">
						<li class="nav-item"><a class="nav-link" href="#about">About
								Us</a></li>
						<li class="nav-item"><a class="nav-link" href="#services">Our
								Services</a></li>
						<li class="nav-item"><a class="nav-link"
							href="#employee-management">Employee Management</a></li>
						<li class="nav-item"><a class="nav-link" href="#contact">Contact</a>
						</li>
					</ul>
				</div>
			</div>
		</nav>
		<!-- Header Section -->
		<div class="header">
			<h1>Welcome to PowerTech Solutions</h1>
			<p>Leading the way in reliable power distribution and innovative
				energy solutions.</p>
		</div>
	</div>

	<!-- Main Links Section (Add Employee and View Employee) - Top Only -->
	<section class="main-links">
		<h2>Manage Employee Details</h2>
		<a href="/addEmployee" class="btn btn-add">Add New Employee</a> <a
			href="/viewEmployee" class="btn btn-view">View Employee Details</a>
	</section>

	<!-- About Us Section -->
	<section id="about">
		<div class="container">
			<h2 class="section-title">About Us</h2>
			<p>PowerTech Solutions is a leading provider of power
				distribution services, committed to delivering reliable and
				efficient electrical solutions for homes, businesses, and
				industries. With a team of skilled engineers and advanced
				technology, we ensure seamless energy distribution that powers our
				community and beyond.</p>
		</div>
	</section>

	<!-- Our Services Section -->
	<section id="services">
		<div class="container">
			<h2 class="section-title">Our Services</h2>
			<div class="row">
				<div class="col-md-4">
					<div class="service-card">
						<h4>Power Distribution</h4>
						<p>We provide safe, efficient, and reliable power distribution
							to residential, commercial, and industrial areas.</p>
					</div>
				</div>
				<div class="col-md-4">
					<div class="service-card">
						<h4>Renewable Energy Solutions</h4>
						<p>Our solar and wind energy systems provide sustainable
							alternatives to traditional power sources.</p>
					</div>
				</div>
				<div class="col-md-4">
					<div class="service-card">
						<h4>Electrical Maintenance</h4>
						<p>We offer regular maintenance and emergency repair services
							to keep your electrical systems running smoothly.</p>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- Employee Management Section -->
	<section id="employee-management">
		<div class="container">
			<h2 class="section-title">Employee Management</h2>
			<p>Manage your company's employee details with ease. You can add
				new employees, view existing employee data, and update employee
				details as required.</p>
		</div>
	</section>

	<!-- Contact Section -->
	<section id="contact">
		<div class="container">
			<h2 class="section-title">Contact Us</h2>
			<p>If you have any inquiries or would like to discuss your
				electrical needs, feel free to reach out to us!</p>
			<div class="text-center">
				<a href="mailto:info@powertechsolutions.com" class="btn btn-primary">Email
					Us</a>
			</div>
		</div>
	</section>

	<!-- Footer Section -->
	<div class="footer">
		<p>&copy; 2024 PowerTech Solutions | All Rights Reserved</p>
		<p>123 PowerTech Road, Energy City, Country</p>
	</div>

	<!-- Bootstrap JS and Popper.js -->
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>

</body>
</html>

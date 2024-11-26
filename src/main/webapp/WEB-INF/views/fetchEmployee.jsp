<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Employee Details</title>

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom CSS -->
<style>
body {
	background-color: #f4f7fc;
	font-family: Arial, sans-serif;
}

.container {
	margin-top: 50px;
}

h2 {
	text-align: center;
	margin-bottom: 30px;
	font-size: 32px;
	color: #343a40;
}

.btn-link {
	color: #007bff;
	font-size: 18px;
}

.btn-link:hover {
	text-decoration: underline;
}

.employee-details {
	margin-top: 20px;
	padding: 20px;
	background-color: #ffffff;
	border-radius: 8px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.employee-details p {
	font-size: 18px;
	color: #343a40;
}

.employee-details strong {
	font-weight: bold;
}

.alert {
	text-align: center;
	margin-top: 20px;
}

.error-message {
	color: red;
	font-size: 18px;
	text-align: center;
}

.delete-link {
	color: red;
}

.delete-link:hover {
	text-decoration: underline;
}
</style>
</head>
<body>
	<div class="container">
		<h2>Employee Details</h2>

		<!-- Home Link -->
		<div class="text-center mb-4">
			<a href="/home" class="btn-link">Home</a>
		</div>

		<!-- Error Message if Employee Not Found -->
		<c:if test="${not empty error}">
			<div class="alert alert-danger error-message">${error}</div>
			<div class="text-center">
				<a href="/addEmployee" class="btn-link">Add New Employee</a>
			</div>
		</c:if>

		<!-- Display Employee Details if Available -->
		<c:if test="${not empty employee}">
			<div class="employee-details">
				<p>
					<strong>Employee ID:</strong> ${employee.id}
				</p>
				<p>
					<strong>Name:</strong> ${employee.name}
				</p>
				<p>
					<strong>Department:</strong> ${employee.department}
				</p>
				<p>
					<strong>Phone Number:</strong> ${employee.phoneNumber}
				</p>

				<!-- Links to Update and Delete Employee -->
				<div class="text-center">
					<a href="/updateEmployee?id=${employee.id}" class="btn-link">Update
						Employee</a> <br> <a href="/deleteEmployee?id=${employee.id}"
						class="delete-link">Delete Employee</a>
				</div>
			</div>
		</c:if>
	</div>

	<!-- Bootstrap JS and Popper.js -->
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
</body>
</html>

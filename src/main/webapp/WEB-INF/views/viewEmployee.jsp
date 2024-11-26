<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>View Employee Details</title>

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

.form-container {
	margin-top: 30px;
	padding: 30px;
	background-color: #ffffff;
	border-radius: 8px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.form-container input {
	margin-bottom: 20px;
	padding: 10px;
	width: 100%;
	border-radius: 4px;
	border: 1px solid #ccc;
	font-size: 16px;
}

.form-container button {
	background-color: #007bff;
	color: #fff;
	font-size: 18px;
	padding: 10px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	width: 100%;
}

.form-container button:hover {
	background-color: #0056b3;
}

.message {
	text-align: center;
	margin-top: 20px;
}

.success-message {
	color: green;
}
</style>
</head>
<body>
	<div class="container">
		<h2>View Employee Details</h2>

		<!-- Link to Home -->
		<div class="text-center mb-4">
			<a href="/home" class="btn-link">Home</a>
		</div>

		<!-- Form to enter Employee ID -->
		<div class="form-container">
			<form action="/fetchEmployee" method="post">
				<label for="id">Enter Employee ID:</label> <input type="number"
					name="id" required>
				<button type="submit">View Employee</button>
			</form>
		</div>

		<!-- Success message if an employee's details were updated -->
		<div class="message">
			<c:if test="${not empty message}">
				<p class="success-message">${message}</p>
				<br>
			</c:if>
		</div>
	</div>

	<!-- Bootstrap JS and Popper.js -->
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
</body>
</html>

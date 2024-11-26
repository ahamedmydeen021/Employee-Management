<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Add New Employee</title>

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
	margin-top: 30px;
}

h2 {
	text-align: center;
	margin-bottom: 20px;
	font-size: 28px;
	color: #343a40;
}

.form-group {
	margin-bottom: 15px;
}

.form-group label {
	font-size: 16px;
	color: #343a40;
}

.form-group input {
	width: 100%;
	padding: 8px;
	font-size: 14px;
	margin-top: 5px;
	border: 1px solid #ddd;
	border-radius: 4px;
}

.form-group input:focus {
	border-color: #66afe9;
	outline: none;
}

.btn-submit {
	width: 100%;
	padding: 10px;
	background-color: #28a745;
	border: none;
	border-radius: 4px;
	color: white;
	font-size: 16px;
	cursor: pointer;
}

.btn-submit:hover {
	background-color: #218838;
}

.btn-link {
	color: #007bff;
	font-size: 14px;
}

.btn-link:hover {
	text-decoration: underline;
}

.alert {
	text-align: center;
	margin-top: 15px;
	font-size: 14px;
}
</style>
</head>
<body>
	<div class="container">
		<h2>Add New Employee</h2>

		<!-- Links -->
		<div class="text-center mb-4">
			<a href="/home" class="btn-link">Home</a> | <a href="/viewEmployee"
				class="btn-link">View Employee Details</a>
		</div>

		<!-- Add Employee Form -->
		<form action="/addEmployee" method="post">
			<div class="form-group">
				<label for="id">Employee ID:</label> <input type="text" id="id"
					name="id" required>
			</div>
			<div class="form-group">
				<label for="name">Name:</label> <input type="text" id="name"
					name="name" required>
			</div>
			<div class="form-group">
				<label for="department">Department:</label> <input type="text"
					id="department" name="department" required>
			</div>
			<div class="form-group">
				<label for="phone">Phone Number:</label> <input type="text"
					id="phone" name="phone" required>
			</div>
			<button type="submit" class="btn-submit">Save</button>
		</form>

		<!-- Success Message -->
		<div class="alert alert-success"
			style="display: ${not empty message ? 'block' : 'none'}">
			${message}</div>
	</div>

	<!-- Bootstrap JS and Popper.js -->
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
</body>
</html>

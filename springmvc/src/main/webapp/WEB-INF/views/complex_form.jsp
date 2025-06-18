<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Complex Form</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>

	<div class="container mt-5">
		<div class="card p-4 shadow">
			<h3 class="text-center">Complex Form</h3>

			<div class="alert alert-danger" role="alert">
			
			<form:errors path="student.*" />  <!-- this is from tag lib we print error to user @ModelAttribute("student") isme ayega -->
				
			</div>
				
			<form action="handle" method="post">


				<div class="mb-3">
					<label for="name" class="form-label">Your name</label> <input
						type="text" class="form-control" name="name" required
						placeholder="Enter Name"> <small
						class="form-text text-muted">We'll never share your name
						with anyone else.</small>
				</div>

				<div class="mb-3">
					<label for="id" class="form-label">Your ID</label> <input
						type="text" class="form-control" name="id"  required placeholder="Enter ID">
				</div>

				<div class="mb-3">
					<label for="dob" class="form-label">Your DOB</label> <input
						type="text" required class="form-control customDate" name="date">
				</div>

				<div class="mb-3">
					<label class="form-label">Select Courses</label> <select
						class="form-select" multiple name="courses">
						<option>Java</option>
						<option>Python</option>
						<option>C++</option>
						<option>Django</option>
					</select>
				</div>

				<div class="mb-3">
					<label class="form-label">Select Gender</label><br>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="gender"
							value="Male"> <label class="form-check-label" for="male">Male</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="gender"
							value="Female"> <label class="form-check-label"
							for="female">Female</label>
					</div>
				</div>

				<div class="mb-3">
					<label for="type" class="form-label">Select Type</label> <select
						class="form-select"  required name="type">
						<option>Old Student</option>
						<option>new Student</option>
					</select>
				</div>


				<div class="mb-3">
					<p>Enter your Address</p>

					<div class="mb-3">
						<label for="city" class="form-label">Enter City</label> <input
							type="text" class="form-control customDate" name="address.city">
					</div>
					<div class="mb-3">
						<label for="street" class="form-label">Enter Street</label> <input
							type="text" class="form-control customDate" name="address.street">
					</div>
				</div>
				<button type="submit" class="btn btn-primary w-100">Submit</button>
			</form>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js">
		// Initialize the datepicker
		$(document).ready(function() {
			$('.customDate').datepicker({
				format : 'dd/mm/yyyy', // Set the desired date format
				autoclose : true
			});
		});
	</script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Form</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
</head>
<body>
<form action="add" method="post">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-8 mt-lg-5">
				<div class="card">
					<div class="card-header">Prescription</div>
					<div class="card-body">
					
						<div class="form-group">
							<label class="labels">Generic</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa"
										aria-hidden="true"></i></span> <input type="text"
										class="form-control" name="generic" id="generic"/>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label class="labels">Brand</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="fa fa-envelope fa" aria-hidden="true"></i></span> <input
										type="text" class="form-control" name="brand" id="brand" />
								</div>
							</div>
						</div>



						<div class="input-group">
							<label for="formGroupExampleInput">Form</label>&nbsp;&nbsp;
							<div class="cols-sm-10">
								<select class="form-control" name="form" id="form">
									<option>Select</option>
									<option>10 mg</option>
									<option>100 mg</option>
									<option>500 mg</option>
								</select>
							</div>
						</div>
						<br>
						<div class="input-group">
							<label for="formGroupExampleInput">Frequency</label>&nbsp;&nbsp;
							<div class="cols-sm-10">
								<select class="form-control" name="frequency">
									<option>Select</option>
									<option>Once a day</option>
									<option>Twice a day</option>
									<option>Thrice a day</option>
								</select>
							</div>
						</div>
						<br>
						<div class="input-group">
							<label for="formGroupExampleInput">Duration</label>&nbsp;&nbsp;
							<div class="cols-sm-10">
								<select class="form-control" name="duration">
									<option>Select</option>
									<option>7 days</option>
									<option>14 days</option>
									<option>30 days</option>
								</select>
							</div>
						</div>
						<br>
						<div class="input-group">
							<label for="formGroupExampleInput">Instruction</label>&nbsp;&nbsp;
							<div class="cols-sm-10">
								<select class="form-control" name="instruction">
									<option>Select</option>
									<option>Take with or without food</option>
									<option>Take after breakfast</option>
									<option>Take before midnight</option>
								</select>
							</div>
						</div>
						<br>


						<div class="mt-5 text-center">
							<button type="submit" class="btn btn-primary profile-button">add more</button>
							<a href="doctor_dashboard.jsp" class="btn btn-primary profile-button">Back</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</form>

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>
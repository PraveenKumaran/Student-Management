<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<title>Create Students</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="offset-2 col-md-8">
			
				<form:form method="POST" modelAttribute="student"
					action="../students/save">
				
					<div class="card">
						<div class="card-header">
							<h1 class="card-title text-center">Create Student</h1>
						</div>
						<div class="card-body">
							<div class="form-group">
								<form:label path="name">Name:</form:label>
								<form:input cssClass="form-control" path="name" />
							</div>
							<div class="form-group">
								<form:label path="address">Address</form:label>
								<form:textarea cssClass="form-control" path="address" />
							</div>
							<div class="form-group">
								<form:label path="department">Department</form:label>
								<form:input cssClass="form-control" path="department" />
							</div>
							<div class="form-group">
								<form:label path="mobile">Mobile</form:label>
								<form:input cssClass="form-control" path="mobile" />
							</div>
						</div>
						<div class="card-footer text-right">
							<button type="submit" class="btn btn-primary">Create</button>
						</div>

					</div>
				</form:form>
			</div>

		</div>
	</div>
</body>
</html>
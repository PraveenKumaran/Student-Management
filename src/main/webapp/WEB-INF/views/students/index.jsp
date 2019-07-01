<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
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
<title>Student List</title>
</head>
<body>
	<div class="container">
		<div class="card">

			<div class="card-header">
				<h1 class="card-title text-center">Student List</h1>
			</div>
			<div class="card-body">

				<div class="row">
					<div class=" offset-sm-2 col-md-8">
						<table class="table">
							<thead class="thead-dark">
								<tr>
									<th scope="col">#</th>
									<th scope="col">Name</th>
									<th scope="col">Address</th>
									<th scope="col">Department</th>
									<th scope="col">Mobile</th>
									
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${students}" var="student">
									<tr>
										<td scope="row"><a href="<c:url value="/students/${student.id}"/>"><c:out value="${student.id}" /></a></td>
										<td><c:out value="${student.name}" /></td>
										<td><c:out value="${student.address}" /></td>
										<td><c:out value="${student.department}" /></td>
										<td><c:out value="${student.mobile}" /></td>
									   
									</tr>
								</c:forEach>
							</tbody>
						</table>


					</div>
				</div>
			</div>
			<div class="card-footer text-right">
				<a type="button" class="btn btn-primary" href="<c:url value="/students/create"></c:url>">Add Student</a>
			</div>
		</div>
	</div>
</body>
</html>
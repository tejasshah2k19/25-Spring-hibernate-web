<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>

<title>New Batch</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
	rel="stylesheet">
<style>
	label{
		font-weight:bold;;
	}
</style>
</head>
<body>

	<div class="container mt-4">
		<h2 class="mb-4">View Batch</h2>

		<form action="saveBatch" method="post">

			<!-- Batch Name -->
			<div class="form-group mb-3">
				<label for="batchName">Batch Name : </label> ${batch.batchName}
			</div>

			<!-- Description -->
			<div class="form-group mb-3">
				<label for="description">Description : </label> ${batch.description }
			</div>

			<!-- Start Date -->
			<div class="form-group mb-3">
				<label for="startDate">Start Date : </label> ${batch.startDate}
			</div>

			<!-- End Date -->
			<div class="form-group mb-3">
				<label for="endDate">End Date : </label> ${batch.endDate}
			</div>

			<!-- Batch Status -->
			<div class="form-group mb-4">
				<label for="batchStatus">Batch Status : </label> ${batch.batchStatus }
			</div>

			<!-- Buttons -->
			<a href="listBatch" class="btn btn-secondary">Back</a>
		</form>
	</div>

</body>
</html>

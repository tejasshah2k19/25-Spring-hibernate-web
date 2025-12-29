<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
	rel="stylesheet" />
</head>
<body>


	<div class="container" align="center">
		<h2>List Batch</h2>

		<div class="Row mb-3">
			<div class="col-md-3"></div>
			<div class="col-md-3">
				<form action="search" method="post">
					Search : <input type="text" name="batchName" /><br> <br>
					<input type="submit" value="Search" />
				</form>
			</div>

		</div>


		<div class="Row">
			<div class="col-md-3"></div>
			<div class="col-md-6">
				<a href="listBatch">Refresh</a>
				<table class="table table-bordered">
					<tr>
						<th>Batch Name</th>
						<th>StartDate</th>
						<th>Action</th>
					</tr>
					<c:forEach items="${allBatch}" var="b">
						<tr>
							<td>${b.batchName }</td>
							<td>${b.startDate }</td>
							<td><a href="deleteBatch?batchId=${b.batchId}">Delete</a> |
								<a href="viewBatch?batchId=${b.batchId}">View</a>  |
								<a href="editBatch?batchId=${b.batchId}">Edit</a>
								</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>List Batch</h2>

	<c:forEach items="${allBatch}" var="b">
			${b.batchName } | ${b.startDate } | <br><br>
	
	</c:forEach>
</body>
</html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <title>New Batch</title>
 	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" >
 </head>
<body>

<div class="container mt-4">
    <h2 class="mb-4">Edit Batch</h2>

    <form action="updateBatch" method="post">
        
        <input type="hidden" value="${batch.batchId}" name="batchId"/>
        
        <!-- Batch Name -->
        <div class="form-group mb-3">
            <label for="batchName">Batch Name</label>
            <input type="text" class="form-control" id="batchName" value="${batch.batchName}" name="batchName"
                   placeholder="Enter batch name" required />
        </div>

        <!-- Description -->
        <div class="form-group mb-3">
            <label for="description">Description</label>
            <textarea class="form-control" id="description" name="description"
                      rows="3" placeholder="Enter description">${batch.description}</textarea>
        </div>

        <!-- Start Date -->
        <div class="form-group mb-3">
            <label for="startDate">Start Date</label>
            <input type="date" class="form-control" id="startDate" name="startDate" value="${batch.startDate}" required />
        </div>

        <!-- End Date -->
        <div class="form-group mb-3">
            <label for="endDate">End Date</label>
            <input type="date" class="form-control" id="endDate" name="endDate"  value="${batch.endDate}" required />
        </div>

        <!-- Batch Status -->
        <div class="form-group mb-4">
            <label for="batchStatus">Batch Status</label>
            <select class="form-control" id="batchStatus" name="batchStatus" required>
            
            	<option>----Select Batch Status ----</option>
			
				<c:forEach items="${batchStautsEnum}" var="x">
					<option value="${x}" ${x==batch.batchStatus?"selected":"" }>${x}</option>
				</c:forEach>		
            	

            	
            </select>
        </div>

        <!-- Buttons -->
        <button type="submit" class="btn btn-primary">Update Batch</button>
        <a href="" class="btn btn-secondary">Cancel</a>
    </form>
</div>

</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="saveUser" method="post">
	FirstName: <input type="text" name="firstName"><br><br>
	LastName:<input type="text" name="lastName"><br><br>
	Email:<input type="text" name="email"><br><br>
	Password: <input type="text" name="password"><br><br>
	Age : <input type="text" name="age"><br><br> 
	Address: <textarea rows="8" cols="18" name="address"></textarea>
	<br><br>
	city : <input type="text" name="city"><br><br> 
	
	<input type="submit" value="Signup"/>
</form>
</body>
</html>
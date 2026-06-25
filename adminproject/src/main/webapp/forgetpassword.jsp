<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="forgetpassword.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
<h2>Reset Password</h2>
<form action="forgetpassword" method="post">
	<input type="email"
			name="email"
			placeholder="Enter your E-mail"
			required>
	<input type="password"
			name="newpassword"
			placeholder="Enter new Password"
			required>
	<button type="submit">
		Reset Password
	</button>
</form>
</div>
</body>
</html>
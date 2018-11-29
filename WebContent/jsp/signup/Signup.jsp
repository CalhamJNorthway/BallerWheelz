<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="java.util.Map" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Ball3r Wh33l$</title>
		<link rel="stylesheet" href="Signup.css">
	</head>
	<body class="page">
	<div class ="badPaper">
		<div class="container">
			<h1 class="text">Baller Signup</h1>
			<form class="inputForm" method="get" action="AddBaller.jsp">
				<p class="formText">name</p>
				<input class="textInput" type="text" name="name" size="30">
				<p class="formText">email</p>
				<input class="textInput" type="text" name="email" size="30">
				<p class="formText">street address</p>
				<input class="textInput" type="text" name="address" size="30">
				<p class="formText">Password</p>
				<input class="textInput" type="password" name="pw" size="30">
				<div class="formButtonsContainer">
					<input class="button" type="submit" value="Submit"><input class="button" type="reset" value="Reset">
				</div>
			</form>
		</div>
	</div>
	</body>
</html> 


<%@page import="java.sql.*"%>
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
		<link rel="stylesheet" href="Login.css">
	</head>
	<body class="page">
		<div class="container">
			<h1 class="text">Baller Login</h1>
			<form class="inputForm" method="get" action="authenticate.jsp">
				<p class="formText">Baller Email</p>
				<input class="textInput" type="text" name="customerEmail" size="30">
				<p class="formText">Baller Password</p>
				<input class="textInput" type="password" name="customerPassword" size="30">
				<div class="formButtonsContainer">
					<input class="button" type="submit" value="Submit"><input class="button" type="reset" value="Reset">
				</div>
			</form>
		</div>
		<% 
		%>
	</body>
</html> 


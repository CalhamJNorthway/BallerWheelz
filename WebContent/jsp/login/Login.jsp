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
	<div class ="badPaper">
		<div class="container">
			<h1 class="text">Baller Login</h1>
			<form class="inputForm" method="get" action="Authenticate.jsp">
				<p class="formText">Baller Email</p>
				<input class="textInput" type="text" name="email" size="30">
				<p class="formText">Baller Password</p>
				<input class="textInput" type="password" name="pw" size="30">
				<div class="formButtonsContainer">
					<input class="button" type="submit" value="Submit"><input class="button" type="reset" value="Reset">
				</div>
			</form>
		</div>
		<%
			// Print prior error login message if present
			if (session.getAttribute("loginMessage") != null) {
				out.println("<p class=\"text\">"+session.getAttribute("loginMessage")+"</p>");
			}
		%>
	</div>
	<h4 class="text">Not a Member?</h4>
	<a class="text" href="../signup/FirstPass.jsp">Signup!</a>
	</body>
</html> 


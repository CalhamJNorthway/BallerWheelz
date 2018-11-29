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
			<h1 class="text">Baller Test</h1>
			<form class="inputForm" method="get" action="BallerTest.jsp">
				<p class="formText">Please input your salary</p>
				<input class="textInput" type="text" name="salary" size="30">
				<div class="formButtonsContainer">
					<input class="button" type="submit" value="Submit"><input class="button" type="reset" value="Reset">
				</div>
			</form>
		</div>
		<%
			// Print prior error login message if present
			if (session.getAttribute("brokeBitchMessage") != null) {
				out.println("<p class=\"text\">"+session.getAttribute("brokeBitchMessage")+"</p>");
			}
		%>
	</div>
	</body>
</html> 


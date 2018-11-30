
<%@ page import="object.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF8"%>
<!DOCTYPE html>
<html>
<head>
<title>Your Shopping Cart</title>
<link rel="stylesheet" href="DetailsPage.css">
</head>
<%
String selectedCarName = request.getParameter("selectedCar");
Wheelz selectedCar = (Wheelz)session.getAttribute(selectedCarName);
String url = "jdbc:sqlserver://sql04.ok.ubc.ca:1433;DatabaseName=db_cnorthwa;";
String uid = "cnorthwa";
String pw = "50517151";
%>
<body class="page">
		<div class="header">
			<div class="searchForm">
                <form class="inputForm" method="get" action="Search.jsp">
				    <input class="textInput" type="text" name="searchString" size="20">
                    <input class="button" type="submit" value="Search">
                </form>
			</div>
            <div class="headerSpacer"></div>
            <form class="mainTextForm" action="../mainPage/MainPage.jsp">
            <button class="mainTextButton" >
                <h1 class="mainText">Baller</h1>
                <h1 class="mainText">Wheels</h1>
            </button>
            </form>
            <div class="headerSpacer"></div>
			<div class="mainOptions">
                <a class="text" href="../../LandingPage.html">Sign-out</a>
                <a class="text" href="../../LandingPage.html">Contact Us</a>
                <a class="text" href="../../LandingPage.html">Shopping Cart</a>
			</div>
		</div>
        <div class="content">
            <div class="storePaper">
            	<div class="storeItem">
		            <img class="previewImage" src="<%=selectedCar.getImageSrc()%>">
		            <div>
		            	<div class="textContainer">
		            		<p class="detailsText">Baller Title: </p><p class="detailsText"><%=selectedCar.getName()%></p>
		            	</div>
		            	<div class="textContainer">
		            		<p class="detailsText">Baller Price: </p><p class="detailsText">$<%=selectedCar.getPrice()%></p>
		            	</div>
		            	<div class="textContainer">
		            		<p class="detailsText">Baller Description:</p><p class="detailsText"><%=selectedCar.getDescription() %></p>
		            	</div>
		            </div>
	            </div>
            </div>
        </div>
	</body>
    
</html> 


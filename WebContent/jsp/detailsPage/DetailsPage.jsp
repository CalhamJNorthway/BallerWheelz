
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
Wheelz selectedCar = (Wheelz)session.getAttribute("selectedCar");

if(selectedCar == null){
	String selectedCarName = request.getParameter("selectedCar");
	selectedCar = (Wheelz)session.getAttribute(selectedCarName);
	session.removeAttribute("confirmationText");
}

session.setAttribute("selectedCar", selectedCar);
String url = "jdbc:sqlserver://sql04.ok.ubc.ca:1433;DatabaseName=db_cnorthwa;";
String uid = "cnorthwa";
String pw = "50517151";

String confirmationText = null;
if(session.getAttribute("confirmationText") != null){
	confirmationText = session.getAttribute("confirmationText").toString();
}

Cart currentCart = (Cart)session.getAttribute("cart");
if(currentCart == null){
	ArrayList<Wheelz> productList = new ArrayList<>();
	currentCart = new Cart(productList);
}
session.setAttribute("cart", currentCart);
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
                <a class="text" href="../checkout.jsp/Checkout.jsp">Shopping Cart</a>
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
		            	<form action="AddProductToCart.jsp">
			            	<button>
			            		<h1 class="text">BUY THIS SHIT</h1>
			            	</button>
		            	</form>
		            </div>
	            </div>
            </div>
            <%
            if(confirmationText != null){
            	out.print("<h4 class=\"text\">"+confirmationText+"</h4>");
            	session.removeAttribute("confirmationText");
            	session.removeAttribute("selectedCar");
            }
            %>
        </div>
	</body>
</html> 


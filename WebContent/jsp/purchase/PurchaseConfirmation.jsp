<%@ page import="java.util.HashMap" %>
<%@ page import="object.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Checkout page</title>
<link rel="stylesheet" href="Purchase.css">
</head>
<%
Cart currentCart = (Cart)session.getAttribute("cart");
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
	           <div>
		           	<h1 class="text">Congrats On Your Purchase You Baller!!!!</h1>
	           </div>
            </div>
        </div>
	</body>


</html>
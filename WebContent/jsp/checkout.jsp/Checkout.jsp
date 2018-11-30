<%@ page import="java.util.HashMap" %>
<%@ page import="object.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Checkout page</title>
<link rel="stylesheet" href="Checkout.css">
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
	           <%
	           if(currentCart == null || currentCart.getProductList() == null || currentCart.getProductList().get(0) == null){
	        		out.print("<H1 class=\"text\">No Items in Shopping Cart</H1>");
	        		if(session.getAttribute("confirmationText") != null) {
	        			out.print("<H1 class=\"text\">"+session.getAttribute("confirmationText").toString()+"</H1>");
	        		}
	        	}else{
	        		out.print("<div class=\"yourCartTextContainer\"><h1 class=\"text\">Your Shopping Cart</h1>");
	        		for(int i = 0; i < currentCart.getProductList().size(); i++) {	// iterates through all product ids
		        		Wheelz car = currentCart.getProductList().get(i);		// prints all info for each product
		        		String listNum = "$";
		        		for(int j = 0; j < i; j++){
		        			listNum = listNum + "$";
		        		}
		        		out.print("<div class=\"product\"><p class=\"text\">"+ listNum + "    Car Model: " + car.getName() + "    ||||   </p> <p class=\"text\">Car Price: $" + car.getPrice() + "</p></div>");
		        	}
		        	out.print("<div><h4 class=\"text\">Your Subtotal is: $" + currentCart.getCost() + "</h4></div>");
	        		out.print(""+
	        				"<div class=\"buttonsContainer\"><a href=\"../purchase/Purchase.jsp\" class=\"bottomButton\"><h2 class=\"text\">BALL OUT</h2></a></div>" +
       						"<div class=\"buttonsContainer\"><a href=\"ClearCart.jsp\" class=\"bottomButton\"><h4 class=\"text\">CLEAR CART</h2></a></div>");
	        		out.print("</div>");
	        	}
	        	session.setAttribute("cart", currentCart);
	           %>
            </div>
        </div>
	</body>


</html>
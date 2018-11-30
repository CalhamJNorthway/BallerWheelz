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
	        		out.println("<H1>No Items in Shopping Cart</H1>");
	        	}else{
	        		out.println("<h1>Your Shopping Cart</h1>");
	        		out.println("<table><tr><th>Product Name</th><th>Price</th><th>Quantity</th><th>Product Id</th></tr>");
	        		for(int i = 0; i < currentCart.getProductList().size(); i++) {	// iterates through all product ids
		        		Wheelz car = currentCart.getProductList().get(i);		// prints all info for each product
		        		
		        		out.print("Car Model: " + car.getName());
		        		out.print("Car Price: $" + car.getPrice());
		        	 	out.println();
		        	}
		        	out.println("Your Subtotal is: $" + currentCart.getCost());
	        	}
	        	session.setAttribute("cart", currentCart);
	           %>
            </div>
        </div>
	</body>


</html>
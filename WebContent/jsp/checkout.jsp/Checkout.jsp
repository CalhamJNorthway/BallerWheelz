<%@ page import="java.util.HashMap" %>
<%@ page import="object.*" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Checkout page</title>
</head>
<body>

<%
Cart currentCart = (Cart)session.getAttribute("cart");

if(currentCart == null){
	out.println("<H1>No Items in Shopping Cart</H1>");
}else{
	out.println("<h1>Your Shopping Cart</h1>");
	out.println("<table><tr><th>Product Name</th><th>Price</th><th>Quantity</th><th>Product Id</th></tr>");
}
	
for(int i = 0; i < currentCart.getProductList().size(); i++) {	// iterates through all product ids
	Wheelz car = currentCart.getProductList().get(i);		// prints all info for each product
	out.print("Car Model: " + car.getName());
	out.print("Car Price: $" + car.getPrice());
 	out.println();
}
out.println("Your Subtotal is: $" + currentCart.getCost());
session.setAttribute("cart", currentCart);
%>

</body>
</html>
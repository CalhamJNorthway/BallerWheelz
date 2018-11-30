<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="java.util.Map" %>
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Checkout page</title>
</head>
<body>
HashMap<String, ArrayList<Object>> cart = (HashMap<String, ArrayList<Object>>) session.getAttribute("cart");

if(cart == null){
out.println("<H1>No Items in Shopping Cart</H1>")
}else{

out.println("<h1>Your Shopping Cart</h1>");
out.println("<table><tr><th>Product Name</th><th>Price</th><th>Quantity</th><th>Product Id</th></tr>");

	
	}
	
	for(Object k: cart.keySet())	// iterates through all product ids
	
	for(Object info: cart.get(k))		// prints all info for each product
	int count = 1;
	
	if(count == 1){
	out.println("<tr>");
	}
	 if(count == 4){
	out.print("<td>info</td></tr>");		// Closes row after last value
	}
	else{
	out.println("<td>info</td>");
	count ++;
	}
	
	} out.println();

int subtotal = 0;
	for(Object k: cart.keySet){	
	subtotal += (int)k.get(1);	
	} 	
	
	out.println("Your Subtotal is: + " subtotal);
	

</body>
</html>
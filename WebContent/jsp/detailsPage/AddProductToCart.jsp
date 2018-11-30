<%@page import="java.util.ArrayList"%>
<%@ page import="object.*" %>

<%
Cart currentCart = (Cart)session.getAttribute("cart");
Wheelz selectedCar = (Wheelz)session.getAttribute("selectedCar");

if(currentCart == null){
	ArrayList<Wheelz> productList = new ArrayList<>();
	currentCart = new Cart(productList);
}

currentCart.addProductToList(selectedCar);

session.setAttribute("cart", currentCart);
session.setAttribute("confirmationText", "This Baller set of Wheelz has been added to your cart!");

response.sendRedirect("DetailsPage.jsp");
%>
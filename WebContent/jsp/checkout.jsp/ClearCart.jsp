<%@page import="java.util.ArrayList"%>
<%@ page import="object.*" %>

<%
session.removeAttribute("cart");
session.setAttribute("confirmationText", "Cart Cleared, Ball status: Deflated Yoga Ball...");

response.sendRedirect("Checkout.jsp");
%>
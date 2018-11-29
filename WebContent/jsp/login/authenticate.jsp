<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Map,java.math.BigDecimal" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF8"%>
<!DOCTYPE html>
<html>
<head>
<title>Ball3r Wh33l$</title>
</head>
<body>

<%
    String customerEmail = request.getParameter("customerEmail");
    String customerPassword = request.getParameter("customerPassword");
    String sql = "SELECT email, password FROM Baller WHERE email = ";
	String url = "jdbc:sqlserver://sql04.ok.ubc.ca:1433;DatabaseName=db_cnorthwa;";
	String uid = "cnorthwa";
	String pw = "50517151";
	
	sql = sql + "\'" + customerEmail + "\'";
	
	try{	// Load driver class
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
	} catch (java.lang.ClassNotFoundException e){
		out.println("ClassNotFoundException: " +e);
	}

	try ( Connection con = DriverManager.getConnection(url, uid, pw);){
		PreparedStatement pstmt = con.prepareStatement(sql);
		ResultSet rst = pstmt.executeQuery();
		String recievedEmail = "";
		String recievedPassword = "";
		while (rst.next()) { recievedEmail = rst.getString("email"); recievedPassword = rst.getString("password");}
		
		if(recievedEmail != null && recievedEmail != "" && recievedPassword != null && recievedPassword != "") {
			if(customerEmail.equals(recievedEmail) && customerPassword.equals(recievedPassword)) {
				response.sendRedirect("../mainPage/MainPage.jsp");
			} else {
				response.setContentType("../mainPage/MainPage.jsp");
			}
		} else {
			response.setContentType("../mainPage/MainPage.jsp");
		}
	}
	catch (SQLException ex){
		out.println(ex);
	}	
	

	
%>
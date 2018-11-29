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
	session.removeAttribute("loginMessage");
    String customerEmail = request.getParameter("email");
    String customerPassword = request.getParameter("pw");
    String sql = "SELECT id, email, password FROM Baller WHERE email = ";
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
		String id = null;
		String recievedEmail = null;
		String recievedPassword = null;
		while (rst.next()) { id = ""+rst.getInt("id"); recievedEmail = rst.getString("email"); recievedPassword = rst.getString("password");}
		
		if(recievedEmail != null && recievedEmail != "" && recievedPassword != null && recievedPassword != "") {
			if(customerEmail.equals(recievedEmail) && customerPassword.equals(recievedPassword)) {
				session.setAttribute("loggedInUserId", id);
				response.sendRedirect("../mainPage/MainPage.jsp");
			}else{
				session.setAttribute("loginMessage","Could not connect to the system using that username/password.");
				response.sendRedirect("Login.jsp");
			}
		}else{
			session.setAttribute("loginMessage","Could not connect to the system using that username/password.");
			response.sendRedirect("Login.jsp");
		}
		
	}
	catch (SQLException ex){
		out.println(ex);
	}	
	

	
%>
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
	String customerName = request.getParameter("name");
    String customerEmail = request.getParameter("email");
    String customerPassword = request.getParameter("pw");
	String customerAddress = request.getParameter("address");
	int id = -1;
	String getId = "SELECT COUNT(id) as newId FROM Baller";
	
	String url = "jdbc:sqlserver://sql04.ok.ubc.ca:1433;DatabaseName=db_cnorthwa;";
	String uid = "cnorthwa";
	String pw = "50517151";
	
	try{	// Load driver class
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
	} catch (java.lang.ClassNotFoundException e){
		out.println("ClassNotFoundException: " +e);
	}

	try ( Connection con = DriverManager.getConnection(url, uid, pw);){
		PreparedStatement pstmt = con.prepareStatement(getId);
		ResultSet rst = pstmt.executeQuery();
		while (rst.next()) { id = rst.getInt("newId"); }
		if(id >= 0) {
			String post ="INSERT INTO Baller (id, name, email, password, address)" + 
					"VALUES ("+ id + ", \'" + customerName + "\', \'" + customerEmail + "\"', \'" + customerPassword + "\', \'" + customerAddress + "\');";
			pstmt = con.prepareStatement(post);
			pstmt.execute();
			pstmt.close();
			session.setAttribute("loggedInUserId", id);
			response.sendRedirect("../mainPage/MainPage.jsp");
		}
		
	}
	catch (SQLException ex){
		out.println(ex);
	}	
	

	
%>
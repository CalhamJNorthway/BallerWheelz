<%@ page import="java.util.HashMap" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="java.util.Map" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF8"%>
<!DOCTYPE html>
<html>
<head>
<title>Your Shopping Cart</title>
<link rel="stylesheet" href="MainPage.css">
</head>
<%
	String userId = null;
	userId = session.getAttribute("loggedInUserId").toString();
	String imgSrc = "";
           
	String url = "jdbc:sqlserver://sql04.ok.ubc.ca:1433;DatabaseName=db_cnorthwa;";
	String uid = "cnorthwa";
	String pw = "50517151";
	String sql = "SELECT * FROM Wheelz;";
	try ( Connection con = DriverManager.getConnection(url, uid, pw);){
		PreparedStatement pstmt = con.prepareStatement(sql);
		ResultSet rst = pstmt.executeQuery();
		while (rst.next()) { imgSrc = rst.getString("imageSrc"); }
		
	}
	catch (SQLException ex){
		out.println(ex);
	}	
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
            <form class="mainTextForm" action="MainPage.jsp">
            <button class="mainTextButton" >
                <h1 class="mainText">Baller</h1>
                <h1 class="mainText">Wheels</h1>
            </button>
            </form>
            <div class="headerSpacer"></div>
			<div class="mainOptions">
                <a class="text" href="../../LandingPage.html">Sign-out</a>
                <a class="text" href="../../LandingPage.html">Contact Us</a>
                <a class="text" href="../../LandingPage.html">Shopping Cart</a>
			</div>
		</div>
        <div class="content">
            <div class="storePaper">
                <%
                    out.print("<div class=\"storeItem\">");
                        out.print("<img class=\"previewImage\" src=\"" + imgSrc + "\">");
                        out.print("<div class=\"shortDetails\">");
                            out.print("<p class=\"text\">Sexy White Benz</p>");
                        out.print("</div>");
                    out.print("</div>");
                %>
            </div>
        </div>
	</body>
    
</html> 


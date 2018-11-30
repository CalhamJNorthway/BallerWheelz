
<%@ page import="object.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF8"%>
<!DOCTYPE html>
<html>
<head>
<title>Your Shopping Cart</title>
<link rel="stylesheet" href="MainPage.css">
</head>
<%
String userId = null;
String imgSrc = "";
String url = "jdbc:sqlserver://sql04.ok.ubc.ca:1433;DatabaseName=db_cnorthwa;";
String uid = "cnorthwa";
String pw = "50517151";
String sql = "SELECT * FROM Wheelz;";
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
	            <div class="storeGrid">
	                <%
	                try ( Connection con = DriverManager.getConnection(url, uid, pw);){
	                	PreparedStatement pstmt = con.prepareStatement(sql);
	                	ResultSet rst = pstmt.executeQuery();
	                	while(rst.next()) {
	                		Wheelz car = new Wheelz(rst.getInt("id"), rst.getString("name"), rst.getInt("price"), rst.getString("imageSrc"), rst.getString("description"));
	                		session.setAttribute(car.getName(), car);
	                		out.print("<form class=\"mainTextForm\" method=\"get\" action=\"../detailsPage/DetailsPage.jsp\">");
	                				out.print("<input type=\"hidden\" value=\""+car.getName()+"\" name=\"selectedCar\">");
				                	out.print("<div class=\"storeItem\">");
					                    out.print("<img class=\"previewImage\" src=\"" + car.getImageSrc() + "\">");
					                    out.print("<div class=\"shortDetails\">");
					                        out.print("<p class=\"text\">"+ car.getName() +"</p>");
					                        out.print("<input type=\"submit\" value=\"See Details\">");
					                    out.print("</div>");
				                	out.print("</div>");
			                	out.print("</button>");
		                	out.print("</form>");
	                	}
	                	
	                }
	                catch (SQLException ex){
	                	out.println(ex);
	                }
	                %>
                </div>
            </div>
        </div>
	</body>
    
</html> 


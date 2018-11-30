<%@page import="com.sun.scenario.effect.Flood"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="object.User"%>
<%@page import="java.sql.*"%>
<%
	
String cardName = request.getParameter("cardName");
String ccNumber = request.getParameter("ccNumber");
String expiryDate = request.getParameter("expiryDate"); 
String securityCode = request.getParameter("cvv");
User loggedInUser = null;
int id = -1;
if(session.getAttribute("userId") != null && session.getAttribute("loggedInUser") != null) {
	loggedInUser = (User)session.getAttribute("loggedInUser");
	id = Integer.parseInt(session.getAttribute("userId").toString());
String creditCardPost = ""+
"INSERT INTO CreditCard (cname, cid, cardNumber, expirationDate, securityCode) VALUES (\'"+ 
cardName +
"\', \'"+ id +
"\', \'"+ ccNumber +
"\', \'"+ expiryDate +
"\',"+ securityCode+");";
String warehouseName = "TheBallerHouse";
String shipmentPost = ""+
"INSERT INTO Shipment (sid, cid, name, address) VALUES (" +
Math.round(Math.random()*300) +
","+ loggedInUser.getId() +
",\'"+ warehouseName +
"\',\'"+ loggedInUser.getAddress()+"\');";
String url = "jdbc:sqlserver://sql04.ok.ubc.ca:1433;DatabaseName=db_cnorthwa;";
String uid = "cnorthwa";
String pw = "50517151";

try{	// Load driver class
	Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
} catch (java.lang.ClassNotFoundException e){
	out.println("ClassNotFoundException: " +e);
}

try (Connection con = DriverManager.getConnection(url, uid, pw);){
	PreparedStatement pstmt = con.prepareStatement(creditCardPost);
	pstmt.execute();
	pstmt = con.prepareStatement(shipmentPost);
	pstmt.execute();
	pstmt.close();
	session.setAttribute("purchaseConfirmation","You Bought our shit!");
	response.sendRedirect("PurchaseConfirmation.jsp");
}catch (SQLException ex){
	out.println(ex);
}

}
%>
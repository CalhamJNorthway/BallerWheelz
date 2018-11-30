<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="object.User"%>
<%@page import="java.sql.*"%>
<%
	
String cardName = request.getParameter("cardName");
String ccNumber = request.getParameter("ccNumber");
String expiryDate = request.getParameter("expiryDate");
SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
String dateString = format.format( new Date() );
String month = expiryDate.charAt(0)+""+expiryDate.charAt(1);
String year = expiryDate.charAt(3)+""+expiryDate.charAt(4);
Date date = format.parse ( "20"+year+"-"+month+"-01" ); 
String securityCode = request.getParameter("cvv");
User loggedInUser = null;

if(session.getAttribute("loggedInUser") != null) {
	loggedInUser = (User)session.getAttribute("loggedInUser");
}
String sql = ""+
"INSERT INTO CreditCard (cname, cid, cardNumber, expirationDate, securityCode) VALUES ("+ 
cardName +
", \'"+ loggedInUser.getId() +
"\', \'"+ ccNumber +
"\', \'"+ date +
"\', \'"+ loggedInUser.getAddress()+");";
String url = "jdbc:sqlserver://sql04.ok.ubc.ca:1433;DatabaseName=db_cnorthwa;";
String uid = "cnorthwa";
String pw = "50517151";

try{	// Load driver class
	Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
} catch (java.lang.ClassNotFoundException e){
	out.println("ClassNotFoundException: " +e);
}

try (Connection con = DriverManager.getConnection(url, uid, pw);){
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.execute();
	pstmt.close();
	session.setAttribute("purchaseConfirmation","You Bought our shit!");
	response.sendRedirect("Purchase.jsp");
}catch (SQLException ex){
	out.println(ex);
}
%>
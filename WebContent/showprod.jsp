<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
</head>
<body>
<h1>Search</h1>



		String url = "jdbc:sqlserver://sql04.ok.ubc.ca:1433;DatabaseName=db_cnorthwa;";
		String uid = "cnorthwa";
		String pw = "50517151";
		
try
	{	// Load driver class
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
	}
	catch (java.lang.ClassNotFoundException e)
	{
		out.println("ClassNotFoundException: " +e);
	}
String name = request.getParameter("name");
	try
	 ( Connection con = DriverManager.getConnection(url, uid, pw);) 
	{			

		String sql = "select name from wheelz";
		boolean hasName = name != null && name != "";
		PreparedStatement p = null;
		ResultSet rs = null;
		
		if(!hasName){
		p = con.prepareStatement(sql);
		rs = p.executeQuery();
		}else{
		p = con.prepareStatement(sql+ " where name like %name%");
		}
		
</body>
</html>
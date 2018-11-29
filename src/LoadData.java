import java.io.File;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Scanner;

/**
 * Loads the order database using code.
 */
public class LoadData
{
	public static void main(String[] argv) throws Exception
	{
		loadData();
	}
	
	public static void loadData() throws Exception
	{		
		String url = "jdbc:sqlserver://sql04.ok.ubc.ca:1433;DatabaseName=db_cnorthwa;";
		String uid = "cnorthwa";
		String pw = "50517151";
		
		System.out.println("Connecting to database.");

		Connection con = DriverManager.getConnection(url, uid, pw);
				
		String fileName = "data/order_sql.ddl";
		
	    try
	    {
	        // Create statement
	        Statement stmt = con.createStatement();
	        
	        Scanner scanner = new Scanner(new File(fileName));
	        // Read commands separated by ;
	        scanner.useDelimiter(";");
	        while (scanner.hasNext())
	        {
	            String command = scanner.next();
	            if (command.trim().equals(""))
	                continue;
	          //  System.out.println(command);        // Uncomment if want to see commands executed
	            try
	            {
	            	System.out.println(command);
	            	stmt.execute(command);
	            }
	            catch (Exception e)
	            {	// Keep running on exception.  This is mostly for DROP TABLE if table does not exist.
	            	System.out.println(e);
	            }
	        }	 
	        scanner.close();
	        
	        System.out.println("Database loaded.");
	        
	        StringBuilder output = new StringBuilder();
	    	String sql = "SELECT * FROM Wheelz";
	        PreparedStatement pstmt = con.prepareStatement(sql);
	        ResultSet rs = pstmt.executeQuery();
	        output.append("price");
	        while (rs.next()) { output.append("\n" + rs.getString("price"));
	        }
	        System.out.println(output);
	        
	    }
	    catch (Exception e)
	    {
	        System.out.println(e);
	    }   
	}
}

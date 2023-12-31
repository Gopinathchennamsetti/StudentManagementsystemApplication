// Java Program to Establish Connection in JDBC

// Importing database
import java.sql.*;
// Importing required classes
import java.util.*;

// Main class
class Main {

	// Main driver method
	public static void main(String a[])
	{

		// Creating the connection using Oracle DB
		// Note: url syntax is standard, so do grasp
		String url = "jdbc:oracle:thin:@localhost:1521:xe";

		// Username and password to access DB
		// Custom initialization
		String user = "system";
		String pass = "12345678";

		// Entering the data
		Scanner k = new Scanner(System.in);

		System.out.println("enter sname");
		String name = k.next();

		System.out.println("enter roll no");
		int roll = k.nextInt();

		System.out.println("enter cgpa");
		String cgpa = k.next();
		System.out.println("enter branch");
		String branch = k.next();

		// Inserting data using SQL query
		String sql = "insert into Student values('" + roll+ "'," + name + ",'" + cgpa +",'" +branch+")";

		// Connection class object
		Connection con = null;

		// Try block to check for exceptions
		try {

			// Registering drivers
			//DriverManager.registerDriver(new oracle.jdbc.OracleDriver());

			// Reference to connection interface
			con = DriverManager.getConnection(url, user,
											pass);

			// Creating a statement
			Statement st = con.createStatement();

			// Executing query
			int m = st.executeUpdate(sql);
			if (m == 1)
				System.out.println(
					"inserted successfully : " + sql);
			else
				System.out.println("insertion failed");

			// Closing the connections
			con.close();
		}

		// Catch block to handle exceptions
		catch (Exception ex) {
			// Display message when exceptions occurs
			System.err.println(ex);
		}
	}
}

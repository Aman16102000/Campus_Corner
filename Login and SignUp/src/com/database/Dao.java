package com.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Dao {
	static Connection con=null;
	static {
		try {
			// loading driver class
			//Class.forName("oracle.jdbc.driver.OracleDriver");
			Class.forName("oracle.jdbc.driver.OracleDriver");

			
			//create connection object
			 con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","student","aman1860");

			if(!con.isClosed())
				System.out.println("connection running ");
			
		} catch (ClassNotFoundException | SQLException e) {

			e.printStackTrace();
		}  
	}
	public static Connection getDbConnection()
	{
		return con;
	}
}


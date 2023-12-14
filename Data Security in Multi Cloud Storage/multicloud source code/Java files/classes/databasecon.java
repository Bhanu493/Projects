package databaseconnection;
import java.sql.*;
public class databasecon{
	static Connection con;
	public static Connection getconnection()
	{
 		try
		{
			Class.forName("com.mysql.jdbc.Driver");	
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mapping","root","493492");
		}
		catch(Exception e)
		{
			System.out.println("class error"+e);
		}
		return con;
	}
	
public static Connection getconnection(String database)
	{
		 Connection co=null; 	String url="", uname="", pwd="";

		if(database.equals("cloud1"))
		{
			url="jdbc:mysql://localhost:3306/cloud1";
			uname="root";
			pwd="493492";
		}
		
		if(database.equals("cloud2"))
		{
			url="jdbc:mysql://localhost:3306/cloud2";
			uname="root";
			pwd="493492";
		}
		if(database.equals("cloud3"))
		{
			url="jdbc:mysql://localhost:3306/cloud3";
			uname="root";
			pwd="493492";
		}
		if(database.equals("cloud4"))
		{
			url="jdbc:mysql://localhost:3306/cloud4";
			uname="root";
			pwd="493492";
		}
 				if(database.equals("cloud5"))
		{
			url="jdbc:mysql://localhost:3306/cloud5";
			uname="root";
			pwd="493492";
		}	
				if(database.equals("cloud6"))
		{
			url="jdbc:mysql://localhost:3306/cloud6";
			uname="root";
			pwd="493492";
		}
		try
		{
			Class.forName("com.mysql.jdbc.Driver");	
			co = DriverManager.getConnection(url,uname,pwd);
		}
		catch(Exception e)
		{
			System.out.println("Database Error"+e);
		}
		return co;
	}





}

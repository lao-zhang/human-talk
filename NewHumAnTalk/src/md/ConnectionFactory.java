package md;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionFactory {
	private static String driver="com.mysql.jdbc.Driver";
	private static String url="jdbc:mysql://localhost:3306/MacOS?useUnicode=true&characterEncoding=UTF-8";
	private static String userName="root";
	private static String password="zx1583707135";
	public static  Connection getConnection()
	{
		try {
			Class.forName(driver);
			return DriverManager.getConnection(url,userName,password);
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return null;
		}
	}
	
}


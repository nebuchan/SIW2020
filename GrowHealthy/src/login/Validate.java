package login;
import java.sql.*;

public class Validate{


public static boolean validate(String Email,String Password){
		boolean st=false;

		try{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection connection=DriverManager.getConnection(  
			"jdbc:postgres://scqjcqio:wynuYWnkYD7uF6IIIkWyj25hlvlUYs2S@packy.db.elephantsql.com:5432/scqjcqio");  
		
			PreparedStatement statement = connection.prepareStatement(
					"select Email,Password from Cliente where Email=? and Password=?");
			statement.setString(1, Email);
			statement.setString(2, Password);
			ResultSet rs=statement.executeQuery();
			st=rs.next();
			
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		} 
		return st;

	}
}	

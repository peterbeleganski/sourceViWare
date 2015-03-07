package models;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Contact {
	
	private Connection conn;
	
	public Contact(Connection conn) {
		this.conn = conn;
	}
	
	public void PostMessage(String user, String subject, String message) throws SQLException{
		
		String sql = "insert into messages (User, Subject, Message) values (?,?,?)";
		
		 PreparedStatement preparedStmt = conn.prepareStatement(sql);
	      preparedStmt.setString (1, user);
	      preparedStmt.setString (2, subject);
	      preparedStmt.setString (3, message);
	     

	      // execute the preparedstatement
	      preparedStmt.execute();
		conn.close();
	}

}

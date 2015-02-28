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
		
		String sql = "insert into messages (User, Subject, Message) values ('"+user+"','"+subject+"','"+message+"')";
		
		PreparedStatement stmt = conn.prepareStatement(sql);

		stmt.execute(sql);
		stmt.close();
	}

}

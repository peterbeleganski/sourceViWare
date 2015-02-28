package models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Login_Register {

	private Connection conn;

	public Login_Register(Connection conn) {
		this.conn = conn;
	}
	public boolean login(String email, String password) throws SQLException {

		String sql = "select count(*) as count from users where email=? and password=?";
		PreparedStatement stmt = conn.prepareStatement(sql);

		stmt.setString(1, email);
		stmt.setString(2, password);

		ResultSet rs = stmt.executeQuery();
		int count = 0;
		if (rs.next()) {
			count = rs.getInt("count");
		}
		rs.close();
		if (count == 0) {
			return false;
		} else {
			return true;
		}
	}
	public boolean exists(String email) throws SQLException {

		String sql = "select count(*) as count from users where email=?";

		PreparedStatement stmt = conn.prepareStatement(sql);

		stmt.setString(1, email);

		ResultSet rs = stmt.executeQuery();

		int count = 0;

		if (rs.next()) {
			count = rs.getInt("count");
		}
		
		rs.close();

		if (count == 0) {
			return false;
		} else {
			return true;
		}
	}
	public void create(String email, String password, String username) throws SQLException {
		String sql = "insert into users (email, password, username) values (?, ?, ?)";

		PreparedStatement stmt = conn.prepareStatement(sql);

		stmt.setString(1, email);
		stmt.setString(2, password);
		stmt.setString(3, username);
		
		stmt.executeUpdate();
		
		stmt.close();
	}
}

package models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Comments {
	
	private Connection conn;

	public void commentHTML(String from, String comment) throws SQLException {
		String sql = "insert into commenth (Sender, Comment) VALUES('"+from+"','"+comment+"')";

		PreparedStatement stmt = conn.prepareStatement(sql);

		stmt.execute(sql);
		
		stmt.close();
	}
	public void commentjsp(String from, String comment) throws SQLException {
		String sql = "insert into commentjsp (Sender, Comment) VALUES('"+from+"','"+comment+"')";

		PreparedStatement stmt = conn.prepareStatement(sql);

		stmt.execute(sql);
		
		stmt.close();
	}
	public void commentjs(String from, String comment) throws SQLException {
		String sql = "insert into commentjs (Sender, Comment) VALUES('"+from+"','"+comment+"')";

		PreparedStatement stmt = conn.prepareStatement(sql);

		stmt.execute(sql);
		
		stmt.close();
	}
	public void commentjq(String from, String comment) throws SQLException {
		String sql = "insert into commentjq (Sender, Comment) VALUES('"+from+"','"+comment+"')";

		PreparedStatement stmt = conn.prepareStatement(sql);

		stmt.execute(sql);
		
		stmt.close();
	}
	public void commentAND(String from, String comment) throws SQLException {
		String sql = "insert into commenta (Sender, Comment) VALUES('"+from+"','"+comment+"')";

		PreparedStatement stmt = conn.prepareStatement(sql);

		stmt.execute(sql);
		
		stmt.close();
	}
	public void commentj(String from, String comment) throws SQLException {
		String sql = "insert into commentj (Sender, Comment) VALUES('"+from+"','"+comment+"')";

		PreparedStatement stmt = conn.prepareStatement(sql);

		stmt.execute(sql);
		
		stmt.close();
	}
}

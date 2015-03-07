package models;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Admin {
	private Connection conn;

	public Admin(Connection conn) {
		this.conn = conn;
	}
	
	public void addCourse(String title, String instructor, String image, String url, String info) throws SQLException{
		String sql = "insert into images (stem, attribution_url, attribution_name,image_information, instructor) values (?, ?, ?,?,?)";
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setString(1, image);
		stmt.setString(2, url);
		stmt.setString(3, title);
		stmt.setString(4, info);
		stmt.setString(5, instructor);
		
		stmt.execute();
		conn.close();
	}
	
	public void addUsers(){
		
	}
	public boolean login(String username, String password) throws SQLException {

		String sql = "select count(*) as count from admins where Username=? and Password=?";
		PreparedStatement stmt = conn.prepareStatement(sql);

		stmt.setString(1, username);
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
	public void editCourse(String title, String instructor, String image, String url, String info, String id) throws SQLException {
		String query = "update images set stem =?,  attribution_url = ?,  attribution_name =?, "
				+ "image_information = ?,  instructor = ? where id = ?";
	      PreparedStatement stmt = conn.prepareStatement(query);
	     
	      	stmt.setString(1, image);
			stmt.setString(2, url);
			stmt.setString(3, title);
			stmt.setString(4, info);
			stmt.setString(5, instructor);
			stmt.setString(6, id);
	 
	      // execute the java preparedstatement
			stmt.executeUpdate();
	}
	
	public void deleteCourse(String id) throws SQLException{
		String sql = "DELETE FROM images WHERE id=?";
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setString(1, id);
		stmt.executeUpdate();
	}
}







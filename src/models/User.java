package models;

public class User {
	private String email="";
	private String password="";

	private String message ="";

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public User() {

	}

	public User(String email, String password) {
		super();
		this.email = email;
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public boolean validate() {

		if(!email.matches("\\w+@\\w+\\.\\w+")){
			message = "Invalid email adress";
			return false;
		}
		
		
		if(password.length()<8){
			message="Password must be at least 8 characters";
			return false;
		}
		else if(password.matches("\\w*\\s+\\w*")){
			message= "Password cannot contain space";
			return false;
		}
		
		return true;
	}
}
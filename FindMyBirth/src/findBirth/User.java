package findBirth;

public class User {
	private String userName;
	private String securityNumber;
	
	public User() {
	}

	
	public User(String userName, String securityNumber) {
		this.userName = userName;
		this.securityNumber = securityNumber;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getSecurityNumber() {
		return securityNumber;
	}

	public void setSecurityNumber(String securityNumber) {
		this.securityNumber = securityNumber;
	}

	

}

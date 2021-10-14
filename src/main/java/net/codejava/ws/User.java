package net.codejava.ws;
public class User {

	private String email;
	private String passWord;
	private String firstName;
	private String lastName;
	
	public User() 
	{
		
	}
	public User(String email, String passWord, String firstName, String lastName) 
	{
	
		this.email = email;
		this.passWord = passWord;
		this.firstName = firstName;
		this.lastName = lastName;
	}
	public User(String firstName, String lastName) 
	{
		this.firstName = firstName;
		this.lastName = lastName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassWord() {
		return passWord;
	}
	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
}

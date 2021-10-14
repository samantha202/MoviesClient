package net.codejava.ws;
import java.util.ArrayList;

public class UserDAO{

	public static ArrayList<User> userL = new ArrayList<>();
	public static String firstName = "";
	public static String lastName = " ";
	
	static {
		userL.add(new User("samantha.noussi@efrei.net","samantha","noussi","samantha"));
		userL.add(new User("bobi@efrei.net","bobi","florent","simo"));
		userL.add(new User("deborah@efrei.net","deborah","deborah","alexandra"));
	}
   //this method return all the users of our Arraylist
	public static ArrayList<User>getAll()
	{
		return userL;
	}
	//this method ckeck if the current user exist in Arraylist
	public static Boolean CkeckUser(String email, String passWord) 
	{
		for(User u : userL) 
		{
			if(u.getEmail().equals(email) && u.getPassWord().equals(passWord)) 
			{
				firstName =  u.getFirstName();
				lastName = u.getLastName();
				return true; 
			}
		}
		return false;
	}
}

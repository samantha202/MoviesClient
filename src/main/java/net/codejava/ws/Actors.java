/*in order to be able to transmit the objects from the front to the back without worries, 
the different ojects that exist on the front should also exist in the back */

package net.codejava.ws;

public class Actors {
	public String fisrtName;
	public String lastName;
	
	
	public Actors() {}
	public Actors(String fisrtName, String lastName) {
		super();
		this.fisrtName = fisrtName;
		this.lastName = lastName;
	}
	public Actors(String fisrtName) {
	
		this.fisrtName = fisrtName;
	}
	public String getFisrtName() {
		return fisrtName;
	}
	public void setFisrtName(String fisrtName) {
		this.fisrtName = fisrtName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
}

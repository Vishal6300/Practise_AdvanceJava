package seriazable;

import java.io.Serializable;
import java.time.LocalDate;

public class Customer implements Serializable{
	String name;
	LocalDate joiningDate;
	String state;
	
	static {
		String citizenship="Indian";
	}

	@Override
	public String toString() {
		return "Customer [name=" + name + ", joiningDate=" + joiningDate + ", state=" + state + "]";
	}

	public Customer(String name, LocalDate joiningDate, String state) {
		super();
		this.name = name;
		this.joiningDate = joiningDate;
		this.state = state;
	}
	
	
}

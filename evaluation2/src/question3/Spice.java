package question3;

import java.io.Serializable;

public class Spice implements Serializable{
	private String name;
    private double price;
    
	public Spice(String name, double price) {
		super();
		this.name = name;
		this.price = price;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}
    
    
	
    
}

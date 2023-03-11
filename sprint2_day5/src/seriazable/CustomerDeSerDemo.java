package seriazable;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectInputStream;

public class CustomerDeSerDemo {

	public static void main(String[] args) throws IOException, ClassNotFoundException {
		ObjectInput oi= new ObjectInputStream(new FileInputStream("customer.ser"));
		
		Customer customer= (Customer)oi.readObject();
//		Customer.citizenship ="Israel";
		System.out.println(customer);
		
		oi.close();

	}

}

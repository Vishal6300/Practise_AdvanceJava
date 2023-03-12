package deserialization;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectInputStream;

public class DeSerilizationDemo {
	public static void main(String[] args) throws IOException, ClassNotFoundException {
		ObjectInput oi= new ObjectInputStream(new FileInputStream("Animal.ser"));
		Animal animal= (Animal)oi.readObject();
		oi.close();
		
		System.out.println(animal);
		
	}
}

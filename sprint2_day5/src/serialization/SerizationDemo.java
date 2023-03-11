package serialization;


import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectOutput;
import java.io.ObjectOutputStream;

public class SerizationDemo {

	public static void main(String[] args) throws IOException{
		Human human= new Human("Rajan",23, 55.54);
		
		ObjectOutput op= new ObjectOutputStream(new FileOutputStream("human.ser"));
		op.writeObject(human);
		op.close();
		
		System.out.println("Object saved in the file");

	}

}

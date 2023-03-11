package class2;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Scanner;

public class PrimitiveValueReadDemo {

	public static void main(String[] args) throws IOException {
		Scanner sc= new Scanner(new FileInputStream("student.txt"));
//		Scanner sc= new Scanner(new FileInputStream("Rajat; 4; 68.54; false;Jaipur,Rajasthan"));
//		sc.delimiter(";"); //It works as split(";");
//		System.out.println("give details");	
		String name= sc.next();
			int std= sc.nextInt();
			double percentage= sc.nextDouble();
			boolean handicapped= sc.nextBoolean();
			String cityState= sc.nextLine();
			System.out.println("Name: "+ name +" Standard : "+ std + " Percentage: "+ percentage+" handcapped: "+ handicapped+" city & state : "+ cityState);
			
			sc.close();
	}

}

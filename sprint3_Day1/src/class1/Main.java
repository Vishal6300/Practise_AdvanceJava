package class1;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

public class Main {

	public static void main(String[] args) throws IOException {
		// TODO Auto-generated method stub
		Path p = Paths.get("d://abc//a1.txt"); // here d:/abc folder must be there,otherwise we get an exception
		if(Files.exists(p)) {
		System.out.println("File is aready exist");
		}else {
		
		}

	}

}

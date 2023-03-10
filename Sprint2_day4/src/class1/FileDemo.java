package class1;

import java.io.File;

public class FileDemo {

	public static void main(String[] args) {
		
		File file= new File("A.txt");
		
		if(!file.exists()) {
			System.out.println("File doesn't exist");
			return;
		}
		System.out.println("FIle name is "+ file.getName());
		System.out.println("Path of file is "+file.getPath());
		System.out.println("Absolute path of file is "+ file.getAbsolutePath());
		
	}

}

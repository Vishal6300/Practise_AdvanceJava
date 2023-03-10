package class1;

import java.io.File;
import java.io.IOException;

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
		System.out.println("A.txt file is "+ file.isFile());
		System.out.println("A.txt is directory? "+ file.isDirectory());
		System.out.println("A.txt file length is " + file.length());
	
	File anotherFile= new File("B.txt");
	
	if(!anotherFile.exists()) {
		System.out.println("No file found named B.txt");
		try{
			System.out.println("Creating the file");
			anotherFile.createNewFile();
			System.out.println("FIle is created");
		}catch(IOException ex) {
			System.out.println("Not created");
		}
		
	}
	
	
	}

}

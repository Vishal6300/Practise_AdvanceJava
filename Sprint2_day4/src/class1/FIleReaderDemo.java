package class1;

import java.io.File;
import java.io.FileReader;
import java.io.Reader;

public class FIleReaderDemo {

	public static void main(String[] args) throws Exception {
		
		File file= new File("A.txt");
		
		if(!file.exists()) {
			System.out.println("File doesn't exist");
			return;
		}
		
		Reader reader= new FileReader(file);
		
		while(true) {
			int ch= reader.read();
			
			if(ch== -1) 
				break;
				System.out.print((char)ch);
			
			
			reader.close();
			
			reader = new FileReader(file);
			
			char content[]= new char[(int) file.length()];
			reader.read(content);
			
			reader.close();
		}
	}

}

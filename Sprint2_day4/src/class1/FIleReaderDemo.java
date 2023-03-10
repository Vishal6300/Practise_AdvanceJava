package class1;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.Reader;

public class FIleReaderDemo {

	public static void main(String[] args) throws FileNotFoundException, Exception{
		
		File file= new File("A.txt");
		
		if(!file.exists()) {
			System.out.println("No file exists named A.txt");
			return;
		}
		
		Reader reader= new FileReader(file);
		
		while(true) {
			int ch= reader.read();
			
			if(ch == -1) 
				break;
				System.out.print((char)ch);
			
			
			reader.close();
			
			reader = new FileReader(file);
			
			char content[]= new char[(int) file.length()];
			reader.read(content);
			
			System.out.println(new String(content));
			
			reader.close();
		}
	}

}

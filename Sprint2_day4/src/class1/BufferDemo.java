package class1;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;


public class BufferDemo {

	public static void main(String[] args) throws IOException {
		File file= new File("D.txt");
		
		if(!file.exists()) {
			System.out.println("File doesn't exist");
			return;
		}
		
		BufferedReader bfReader=new BufferedReader(new FileReader(file));
		BufferedWriter bWriter= new BufferedWriter(new FileWriter("E.txt"));
		
		while(true) {
			String line=bfReader.readLine();
			if(line == null) 
				break;
			System.out.println(line);
			bWriter.write(line);
			bWriter.newLine();
		}
		
//		System.out.println(bfReader);
		bfReader.close();
		bWriter.close();
	}

}

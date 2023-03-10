package class1;

import java.io.FileWriter;
import java.io.IOException;
import java.io.Writer;

public class FileWriterDemo {

	public static void main(String[] args) throws IOException {
		Writer writer= new FileWriter("C.txt");
		writer.write(100);
		writer.write("ear Students! you will be placed soon");
		
		
		writer.flush();
		writer.close();
	}

}

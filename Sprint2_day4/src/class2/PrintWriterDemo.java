package class2;


import java.io.IOException;
import java.io.PrintWriter;

public class PrintWriterDemo {

	public static void main(String[] args) throws IOException {
		PrintWriter pw= new PrintWriter("F.txt");
		pw.write(100);
		pw.println();
		pw.write(100);
		pw.println();
		pw.print(58.25);
		pw.println(false);
		pw.println("All is well");
		
		pw.close();
	}

}

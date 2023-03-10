package class1;

import java.io.File;

public class FileDirDemo {

	public static void main(String[] args) {
		File file= new File("mydir");
		
		if(!file.exists()) {
			System.out.println("mydir directory doesn't exist");
			return;
		}
		System.out.println("mydir is a directory?  "+ file.isDirectory());
		
		String names[]= file.list();
		
		for(String name: names) {
			System.out.println(name + " : "+ (new File(file,name).isFile()?"File": "Folder"));
			
		}
		
		File anotherDir= new File("myAnotherDir");
		
		if(!anotherDir.exists()) {
			System.out.println("No directory named "+ anotherDir.getName());
			System.out.println("Creating folder myANotherDir");
			anotherDir.mkdir();
			
			try {
				Thread.sleep(5000);
			} catch (InterruptedException e) {
				
			}
		}
		anotherDir.delete();

	}

}

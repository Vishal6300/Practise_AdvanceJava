package class1;

public class A {
	static synchronized void printMessage(String message) {
		System.out.print("[");
		try {
			System.out.println(message);
			Thread.sleep(1000);
		} catch (InterruptedException e) {
			
		}
		System.out.print("]");
	}
}

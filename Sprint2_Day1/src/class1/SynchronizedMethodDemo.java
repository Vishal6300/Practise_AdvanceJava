package class1;


class B implements Runnable{
	A a;
	String message;
	
	public B(A a, String message) {
		super();
		this.a = a;
		this.message = message;
	}

	@Override
	public void run() {
		a.printMessage(message);
		
	}
	
}

public class SynchronizedMethodDemo{
	public static void main(String[] args) {
		A a = new A();
		
		Runnable b1= new B(a,"Hello");
		Runnable b2= new B(a,"World");
		Runnable b3= new B(a,"of Java");
		
		Thread t1= new Thread(b1);
		Thread t2= new Thread(b2);
		Thread t3= new Thread(b3);
		
		t1.start();
		t2.start();
		t3.start();
		
		try {
			t1.join();
			t2.join();
			t3.join();
		} catch (InterruptedException e) {
			
		}
		System.out.println("Bye bye Main");
	}
}

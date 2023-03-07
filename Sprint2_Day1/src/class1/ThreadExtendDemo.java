package class1;



public class ThreadExtendDemo extends Thread{
	
	@Override
	public void run() {
		String threadName= Thread.currentThread().getName();
		System.out.println("\nStarting "+ threadName);
		for(int i=0;i<100;i++) {
			System.out.print("! ");
		}
		System.out.println("\nEnded "+ threadName);
	}

	public static void main(String[] args) {
		ThreadExtendDemo t1= new ThreadExtendDemo();
		
		t1.start();
		for(int i=0;i<100;i++) {
			System.out.print("$ ");
		}
		try {
			
			t1.join();
		} catch (InterruptedException e) {
			
		}
		System.out.println("Main thread Ended");
	}
}

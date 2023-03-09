package yieldInmulthreading;

public class MyThread extends Thread{

	@Override
	public void run() {
		System.out.println("Started : "+ Thread.currentThread().getName());
		for(int i=0;i<100;i++) {
			System.out.println("#");
			
		}
		System.out.println("Ended : "+ Thread.currentThread().getName());
		
	}
	
	
}

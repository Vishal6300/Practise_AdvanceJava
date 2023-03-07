package class1;

public class ThreadPriorityDemo extends Thread{
	int counter;
	static boolean runMe= true;
	
	ThreadPriorityDemo(String name){
		super(name);
	}
	
	@Override
	public void run() {
		
		while(runMe) {
			counter++;
		}
	}
	
	public static void main(String[] args) {
		System.out.println("Hello main Thread");
		ThreadPriorityDemo t1= new ThreadPriorityDemo("HP- Thread");
		t1.setPriority(MAX_PRIORITY -2);
		
		ThreadPriorityDemo t2= new ThreadPriorityDemo("LP- Thread");
		t2.setPriority(MIN_PRIORITY +2);
		
		t1.start();
		t2.start();
		
		try {
			Thread.sleep(1000);
			runMe= false;
			t1.join();
			t2.join();
		} catch (InterruptedException e) {
			
		}
		
		System.out.println("The counter for "+ t1.getName()+ " is running");
	}
}

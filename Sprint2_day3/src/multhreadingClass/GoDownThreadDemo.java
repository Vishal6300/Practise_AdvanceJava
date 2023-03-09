package multhreadingClass;

class GoDown{
	static boolean isEmpty= true;
	
	synchronized void produce() {
		if(!isEmpty) {
			System.out.println("Produces: sleep");
			try {
				wait();
			} catch (InterruptedException e) {
				
			}
			System.out.println("Produces: wake up");
		}
		System.out.println("Producing an item");
		isEmpty= false;
		notify();
	}
	
	synchronized void consume() {
		if(!isEmpty) {
			System.out.println("Consumer: sleep");
			try {
				wait();
			} catch (InterruptedException e) {
				
			}
			System.out.println("Consumer: wake up");
		}
		System.out.println("Consuming an item");
		isEmpty= true;
		notify();
	}
}

class Producer implements Runnable{
	GoDown gd;

	
	public Producer(GoDown gd) {
		this.gd = gd;
	}

	@Override
	public void run() {
		gd.produce();
	}
}
class Consumer implements Runnable{
	GoDown gd;

	@Override
	public void run() {
		gd.consume();
		
	}

	public Consumer(GoDown gd) {
		
		this.gd = gd;
	}
	
}

public class GoDownThreadDemo {

	public static void main(String[] args) {
		
		GoDown gd= new GoDown();
		
		Producer producer= new Producer(gd);
		Consumer consumer= new Consumer(gd);
		
		Thread prodThread= new Thread(producer);
		Thread conThread= new Thread(consumer);
		
		
		prodThread.start();
		conThread.start();
		
		try {
			prodThread.join();
			conThread.join();
		} catch (InterruptedException e) {
			
		}
		System.out.println("Bye Bye");
		
	}

}

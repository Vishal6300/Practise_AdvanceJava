package multhreadingClass;

public class InterThreadDemo extends Thread{

	@Override
	public void run() {
		synchronized (this) {
			try {
				System.out.println("twinkle twinkle little star");
				notify();
				wait();
				System.out.println("Up above the world so high");
				notify();
			}catch(InterruptedException e) {
				
			}
		}
		
		
	}
	
	
	public static void main(String[] args) {
		InterThreadDemo itd=new InterThreadDemo();
		itd.start();
		
		synchronized (itd) {
			try {
				itd.wait();
				System.out.println("How I wondar what you are");
				itd.notify();
				itd.wait();
				System.out.println("Like a diamond in the sky");
				itd.join();
			} catch (InterruptedException e1) {
				
			}
		
			System.out.println("Bye Bye");
		}
		
	}
}

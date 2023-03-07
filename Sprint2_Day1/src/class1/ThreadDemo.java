package class1;


class NewThreadTask implements Runnable{

	@Override
	public void run() {
		String childThread= Thread.currentThread().getName();
		System.out.println("\nStarting "+ childThread);
		for(int i=0;i<50;i++) {
			System.out.print("# ");
		}
		System.out.println("\nEnded "+ childThread);
	}
	
}

public class ThreadDemo {
		public static void main(String[] args) {
			Runnable r= new NewThreadTask();
			Thread t1= new Thread(r);
			
			t1.start();
			
			for(int i=0;i<50;i++) {
				System.out.print("% ");
			}
			
			try {
				Thread.sleep(500);
			} catch (InterruptedException e) {
				
			}
			System.out.println("\nBye Bye Main Thread");
		}
}

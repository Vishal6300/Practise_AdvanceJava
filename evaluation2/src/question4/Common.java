package question4;

public class Common {
	
	 int value;
	 boolean flag =true;
	 
	 public synchronized void producer(int i) {
		 
		 
		 if(flag = true) {
			 
			 value =i;
			 
			 System.out.println("Producer Produced "+i);
			 
			 flag = false;
			 
			 this.notify();
			 
			 try {
				this.wait();
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			 
			 
		 }
	 }
	 
	 public  synchronized int  consumer() {
		 
		 if(flag == true) {
			 
			 try {
				this.wait();
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			 
			 
		 }
		 
		 flag = true;
		 
		 this.notify();
		 
		 return value;
		 
		 
	 }
		
		
		

	}

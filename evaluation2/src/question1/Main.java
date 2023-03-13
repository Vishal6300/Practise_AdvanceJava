package question1;

class Virat extends Thread{
		
	int sum=0;
	@Override
	public void run() {
		// TODO Auto-generated method stub
		for(int i=1;i<=20;i++) {
			sum+=i;
		}
		System.out.println(Thread.currentThread().getName()+ sum);
	}
	
}
class Dhoni extends Thread{
	public void run() {
		for(int i=1;i<=20;i++) {
			System.out.println(Thread.currentThread().getName()+ i);
		}
		
	}
}


public class Main {
	public static void main(String[] args) {
		
	}
}

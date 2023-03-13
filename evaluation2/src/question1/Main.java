package question1;


class Virat extends Thread{
		
	int sum=0;
	@Override
	public void run() {
		// TODO Auto-generated method stub
		for(int i=1;i<=20;i++) {
			sum+=i;
			System.out.println(Thread.currentThread().getName()+" "+ sum);
		}
		
	}
	
}
class Dhoni extends Thread{
	public void run() {
		for(int i=1;i<=10;i++) {
			System.out.println(Thread.currentThread().getName()+" " +i);
		}
		
	}
}
class Rohit extends Thread{
	int product=1;
	@Override
	public void run() {
		// TODO Auto-generated method stub
		
		for(int i=1;i<=10;i++) {
			product=product*i;
			System.out.println(Thread.currentThread().getName()+ " "+ product);
		}
		
	}
	
}


public class Main {
	public static void main(String[] args) {
			Virat v= new Virat();
			Dhoni d= new Dhoni();
			Rohit r= new Rohit();
			
			d.setName("dhoni");
			v.setName("virat");
			r.setName("rohit");
			
	}
}

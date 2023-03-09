package yieldInmulthreading;

import java.util.concurrent.Callable;
import java.util.concurrent.Executors;

 class MyCallable implements Callable<Integer>{
		int number;

		
		public MyCallable(int number) {
			super();
			this.number = number;
		}


		@Override
		public Integer call() throws Exception {
			int sum=0;
			
			for(int i=1; i< number; i++) {
				sum=sum+ i;
			}
			return sum;
		}
		
}
 
 public class CallableDemo{
	 public static void main(String[] args) {
		MyCallable callables[]= {new MyCallable(10), new MyCallableDemo(15),new MyCallableDemo(25), new MyCallableDemo(5)};
		
		Executors es= Executors.newFixedThreadPool(10);
		
		Runnable r= ThreadPoolExample :: fun;
	}
 }

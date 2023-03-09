package yieldInmulthreading;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class ThreadPoolExample {

	public static void main(String[] args) {
		ExecutorService es= Executors.newFixedThreadPool(10);
		
//		Runnable r= ThreadPoolExample :: fun;
		
		for(int i=1; i<=5 ; i++) {
//			es.submit(r);
		}
		es.shutdown();
	}

}

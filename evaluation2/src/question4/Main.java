package question4;

import java.util.ArrayList;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ArrayList<Integer> list = new ArrayList<Integer>();
		
        Thread producerThread = new Thread(new Producer(list));
        Thread consumerThread = new Thread(new Consumer(list));
        
        producerThread.start();
        consumerThread.start();
	}

}

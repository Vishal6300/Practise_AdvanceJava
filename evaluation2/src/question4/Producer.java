package question4;

import java.util.ArrayList;

class Producer implements Runnable {
    private ArrayList<Integer> list;

    public Producer(ArrayList<Integer> list) {
        this.list = list;
    }
    
    @Override
    public void run() {
        for (int i = 0; i < 5; i++) {
            int number = (int) (Math.random() * 6); // produces a random number between 0 and 5
            System.out.println("Producer Produced: " + number);
            synchronized (list) {
                list.add(number); // add the produced number to the list
                list.notifyAll(); // notifies the consumer thread that a new number is available
            }
            try {
                Thread.sleep(1000); // sleep for 1 second
            } catch (InterruptedException e) {
              
            }
        }
    }
}

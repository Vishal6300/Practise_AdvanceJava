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
            int number = (int) (Math.random() * 6); 
            System.out.println("Producer Produced: " + number);
            synchronized (list) {
                list.add(number); 
                list.notifyAll(); 
            }
            try {
                Thread.sleep(1000); 
            } catch (InterruptedException e) {
              
            }
        }
    }
}

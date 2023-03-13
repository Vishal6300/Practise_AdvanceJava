package question4;

import java.util.ArrayList;

class Consumer implements Runnable {
    private ArrayList<Integer> list;

    public Consumer(ArrayList<Integer> list) {
        this.list = list;
    }

    public void run() {
        int sum = 0;
        while (true) {
            synchronized (list) {
                while (list.isEmpty()) { // waits until there is a number to consume
                    try {
                        list.wait();
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
                int number = list.remove(0); // remove the first number from the list
                sum += number; // add the number to the sum
                System.out.println("Consumer Calculated Sum is: " + sum);
            }
        }
    }
}









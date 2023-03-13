package question2;

import java.io.FileWriter;
import java.io.IOException;

public class FirstThread implements Runnable {
	
    @Override
    public void run() {
        String[] names = {"Anuj", "Bharat", "Chaman", "Dhanush", "Garv"};
        double[] marks = {56.25, 66.25, 70.25, 58.25, 58.62};
        double[] attendancePercentage = {77.58, 57.58, 66.74, 95.74, 95.74};

        try {
        	
            FileWriter writer = new FileWriter("student.txt");
            for (int i = 0; i < names.length; i++) {
            	
                String studentData = names[i] + " " + marks[i] + " " + attendancePercentage[i] + "\n";
                writer.write(studentData);
            }
            writer.close();
            System.out.println("Student added succesfully");
        } catch (IOException e) {
        	
            System.out.println("Not added ");
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
    	
        FirstThread firstThread = new FirstThread();
        Thread thread = new Thread(firstThread);
        
        thread.start();
    }
}


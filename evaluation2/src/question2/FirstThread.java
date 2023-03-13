package question2;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

public class FirstThread implements Runnable {
	
	
    @Override
    public void run() {
    	// TODO Auto-generated method stub
        try {
            File file = new File("student.txt");
            FileWriter fileWriter = new FileWriter(file);
            
            PrintWriter writer = new PrintWriter(fileWriter);

            String[] studentData = {
                    "Anuj 56.25 77.58",
                    "Bharat 66.25 57.58",
                    "Chaman 70.25 66.74",
                    "Dhanush 58.25 95.74",
                    "Garv 58.62 95.74"
            };

            for (String data : studentData) {
                writer.println(data);
            }

            writer.close();
            fileWriter.close();
        } catch (Exception e) {
        	// TODO Auto-generated method stub
        }
    }

    public static void main(String[] args) {
    	// TODO Auto-generated method stub
        FirstThread firstThread = new FirstThread();
        Thread thread1 = new Thread(firstThread);

        Callable<String> secondThread = () -> {
            String maxPercentageStudentName = "";
            double maxPercentage = 0;

            try {
                File file = new File("student.txt");
                FileReader fileReader = new FileReader(file);
                BufferedReader reader = new BufferedReader(fileReader);
                
                String line;

                while ((line = reader.readLine()) != null) {
                	
                    String[] data = line.split(" ");
                    String studentName = data[0];
                    
                    double percentage = Double.parseDouble(data[2]);
                    if (percentage > maxPercentage) {
                        maxPercentage = percentage;
                        maxPercentageStudentName = studentName;
                    }
                }
            } catch (Exception e) {
           
            }

            return maxPercentageStudentName;
        };
        FutureTask<String> futureTask1 = new FutureTask<>(secondThread);

        Callable<Double> thirdThread = () -> {
            double total = 0;
            int numStudents = 0;

            try {
                File file = new File("student.txt");
                FileReader fileReader = new FileReader(file);
                BufferedReader reader = new BufferedReader(fileReader);
                String line;

                while ((line = reader.readLine()) != null) {
                    String[] data = line.split(" ");
                    double attendancePercentage = Double.parseDouble(data[2]);
                    total += attendancePercentage;
                    numStudents++;
                }
            } catch (Exception e) {
            	// TODO Auto-generated method stub
            }

            double average = total / numStudents;
            return average;
        };
        FutureTask<Double> futureTask2 = new FutureTask<>(thirdThread);

        thread1.start();
        
        try {
        	
            thread1.join();
            new Thread(futureTask1).start();
            new Thread(futureTask2).start();
            System.out.println("Student who scored maximum percentage: " + futureTask1.get());
            System.out.println("Average attendance percentage: " + futureTask2.get());
        } catch (Exception e) {
        	// TODO Auto-generated method stub
        }
    }
}



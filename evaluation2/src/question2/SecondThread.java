package question2;

import java.io.BufferedReader;
import java.io.FileReader;
import java.util.concurrent.Callable;

public class SecondThread implements Callable<String> {
	
	
    @Override
    public String call() {
        String maxPercentageStudentName = "";
        double maxPercentage = 0;

        try {
            FileReader fileReader = new FileReader("student.txt");
            BufferedReader reader = new BufferedReader(fileReader);
            
            String line= reader.readLine();

            while (line!=null) {
                String[] data = line.split(" ");
                String studentName = data[0];
                double percentage = Double.parseDouble(data[2]);
                if (percentage > maxPercentage) {
                	
                    maxPercentage = percentage;
                    maxPercentageStudentName = studentName;
                }
            }

            reader.close();
            fileReader.close();
        } catch (Exception e) {
           System.out.println("Not found");
        }

        return maxPercentageStudentName;
    }

    public static void main(String[] args) {
    	
        SecondThread secondThread = new SecondThread();
        
        try {
            String maxPercentageStudentName = secondThread.call();
            
            System.out.println(maxPercentageStudentName);
        } catch (Exception e) {
            System.out.println("Nhi mila");
        }
    }
}


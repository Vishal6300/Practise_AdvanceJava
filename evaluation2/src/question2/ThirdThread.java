package question2;

import java.io.BufferedReader;
import java.io.FileReader;
import java.util.concurrent.Callable;

public class ThirdThread implements Callable<Double> {
    @Override
    public Double call() {
        double totalAttendancePercentage = 0;
        int numStudents = 0;

        try {
            FileReader fileReader = new FileReader("student.txt");
            BufferedReader reader = new BufferedReader(fileReader);
            String line;

            while ((line = reader.readLine()) != null) {
                String[] data = line.split(" ");
                double attendancePercentage = Double.parseDouble(data[2]);
                totalAttendancePercentage += attendancePercentage;
                numStudents++;
            }

            reader.close();
            fileReader.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        double averageAttendancePercentage = totalAttendancePercentage / numStudents;
        return averageAttendancePercentage;
    }

    public static void main(String[] args) {
        ThirdThread thirdThread = new ThirdThread();
        try {
            double averageAttendancePercentage = thirdThread.call();
            System.out.println("Average attendance percentage: " + averageAttendancePercentage);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}


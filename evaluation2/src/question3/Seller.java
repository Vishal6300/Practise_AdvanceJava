package question3;

	import java.io.FileInputStream;
	import java.io.IOException;
	import java.io.ObjectInputStream;
	import java.util.HashMap;
	import java.util.Map;
	import java.util.Scanner;

	public class Seller {
	    public static void main(String[] args) {
	    	// TODO Auto-generated method stub
	    	
	        try (FileInputStream fileIn = new FileInputStream("spices.ser");
	             ObjectInputStream in = new ObjectInputStream(fileIn)) {
	        	
	            Map<String, Double> spicePrices = (HashMap<String, Double>) in.readObject();
	            
	            Scanner sc = new Scanner(System.in);
	            
	            double totalBill = 0;
	            System.out.println("Spices: Salt, Turmeric, Cumin, Cinnamon, Mace");
	            
	            for (int i = 1; i <= 5; i++) {
	                System.out.print("Enter spice name and number of packets (like Salt 2): ");
	                String spiceName = sc.next();
	                
	                int numPackets = sc.nextInt();
	                
	                double pricePerPacket = spicePrices.get(spiceName);
	                double billForSpice = numPackets * pricePerPacket;
	                
	                totalBill += billForSpice;
	            }
	            System.out.println("Total bill: " + totalBill);
	            sc.close();
	        } catch (IOException | ClassNotFoundException e) {
	        	// TODO Auto-generated catch block
	            System.out.println("Not found spice ");
	        }
	       
	    }
	}

package question3;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.util.HashMap;
import java.util.Map;

public class PriceList {
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
        Map<String, Double> spicePrices = new HashMap<>();
        spicePrices.put("Salt", 30.0);
        spicePrices.put("Turmeric", 35.0);
        spicePrices.put("Cumin", 40.0);
        spicePrices.put("Cinnamon", 70.0);
        spicePrices.put("Mace", 25.0);

        try (FileOutputStream fileOut = new FileOutputStream("spices.ser");
             ObjectOutputStream out = new ObjectOutputStream(fileOut)) {
            out.writeObject(spicePrices);
            System.out.println("Spice prices added successfully.");
        } catch (IOException e) {
            System.out.println("Not done ");
        }
    }
}


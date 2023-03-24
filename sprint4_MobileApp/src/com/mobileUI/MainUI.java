package com.mobileUI;

import java.time.LocalDate;
import java.util.Scanner;

import com.mobileDto.Mobile;
import com.mobileDto.MobileImpl;

public class MainUI {
public static void main(String[] args) {
	Scanner sc=new Scanner(System.in);
	
	int choice=0;
	do {
		System.out.println("1. ADD MOBILE");
		System.out.println("2. UPDATE MOBILE");
		System.out.println("3. DELETE MOBILE");
		System.out.println("4. VIEW ALL MOBILES");
		System.out.println("5. SEARCH MOBILE BY MODEL NUMBER");
		System.out.println("6. SEARCH MOBILE BY PRICE RANGE");
		System.out.println("0. EXIT");
		
		choice=sc.nextInt();
		switch(choice) {
		case 1:
			addMobile(sc);
			break;
//		case 2:
//			updateMobile(sc);
//			break;
//		case 3:
//			deleteMobile(sc);
//			break;
//		case 4:
//			viewAllMobiles();
//			break;
//		case 5:
//			searchMobileByModelNumber(sc);
//			break;
//		case 6:
//			searchMobileByPriceRange(sc);
		}
				
		
	}while(choice!=0);
		sc.close();
	
}

public static void addMobile(Scanner sc) {
	
	System.out.println("Enter id");
	int id=sc.nextInt();
	
	System.out.println("Enter mobile's Model Number");
	String model_no=sc.next();
	
	System.out.println("Enter company name");
	String company=sc.next();
	
	System.out.println("Enter mobile's price");
	int price=sc.nextInt();
	
	System.out.println("Enter MFGdate of mobile");
	LocalDate MFGdate=LocalDate.parse(sc.next());
	
	Mobile mobile= new MobileImpl(id, model_no, company, price, MFGdate);
}
}

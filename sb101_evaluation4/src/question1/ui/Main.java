package question1.ui;

import java.util.List;
import java.util.Scanner;
import java.util.function.Consumer;

import question1.dao.CarDao;
import question1.dao.CarDaoImpl;
import question1.dto.Car;
import question1.dto.CarImpl;
import question1.exception.NoRecordFoundException;
import question1.exception.SomethingWentWrongException;


public class Main {

		static void addCar(Scanner sc) {
			// taking input of car details
			System.out.print("Enter car id ");
			String car_id = sc.next();

			System.out.print("Enter car name ");
			String model_name = sc.next();

			System.out.print("Enter Price ");
			int price = sc.nextInt();

			System.out.print("Enter total_seats ");
			int total_seats = sc.nextInt();
			
			System.out.print("Enter company_id ");
			String company_id = sc.next();

			Car car = new CarImpl(car_id, model_name, price, total_seats,company_id);

			CarDao carDAO = new CarDaoImpl();

			try {
				carDAO.addCar(car);
				System.out.println("Car added successfully");
			} catch (SomethingWentWrongException ex) {
				System.out.println(ex);
			}
			
		}

		static void updateCar(Scanner sc) {
			
			System.out.print("Enter car id ");
			String car_id = sc.next();

			System.out.print("Enter car name ");
			String model_name = sc.next();

			System.out.print("Enter price ");
			int price = sc.nextInt();

			System.out.print("Enter total_seats ");
			int total_seats = sc.nextInt();
			
			System.out.print("Enter company_id ");
			String company_id = sc.next();

			Car car = new CarImpl(car_id, model_name, price, total_seats,company_id);

			CarDao carDao = new CarDaoImpl();
			try {
				
				carDao.updateCar(car);
				
				System.out.println("Car updated successfully");
			} catch (SomethingWentWrongException ex) {
				System.out.println(ex);
			}
		}

		static void deleteCar(Scanner sc) {
			System.out.print("Enter car_id ");
			String car_id = sc.next();

	
			CarDao carDao= new CarDaoImpl();

			try {
				carDao.deleteCar(car_id);
				
				System.out.println("Car deleted successfully");
			} catch (SomethingWentWrongException ex) {
				
				System.out.println(ex);
			}
		}

		static void viewCar() {
			CarDao carDao = new CarDaoImpl();
			try {
				List<Car> carList = carDao.getCarList();
				Consumer<Car> con = car -> System.out
						.println("Car Id: " + car.getCar_id() + " Model Name: " + car.getModel_name()
								+ " Price: " + car.getPrice() + " Total Seats: " + car.getTotal_seats()+ " Company_id: " + car.getCompany_id());
				carList.forEach(con);
			} catch (SomethingWentWrongException | NoRecordFoundException ex) {
				System.out.println(ex.getMessage());
			}
		}

		

		public static void main(String[] args) {
			Scanner sc = new Scanner(System.in);
			int choice = 0;
			do {
				System.out.println("0. Exit");
				System.out.println("1. Add Car");
				System.out.println("2. View Car");
				System.out.println("3. Update Car");
				System.out.println("4. Delete Car");
				System.out.print("Enter Selection ");
				choice = sc.nextInt();

				switch (choice) {
					case 1:
						addCar(sc);
						break;
					case 2:
						viewCar();
						break;
					case 3:
						updateCar(sc);
						break;
					case 4:
						deleteCar(sc);
						break;
					
					case 0:
						System.out.println("Thank you visit again");
						break;
					default:
						System.out.println("Invalid Selection please try again later");
				}

			} while (choice != 0);
			sc.close();


	}

}

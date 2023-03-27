package question1.dao;

import java.util.List;

import question1.dto.Car;
import question1.exception.NoRecordFoundException;
import question1.exception.SomethingWentWrongException;

public interface CarDao {
	public void addCar(Car car) throws SomethingWentWrongException;
	public void updateCar(Car car) throws SomethingWentWrongException;
	public void deleteCar(String empId) throws SomethingWentWrongException;
	public List<Car> getCarList() throws SomethingWentWrongException, NoRecordFoundException;
}

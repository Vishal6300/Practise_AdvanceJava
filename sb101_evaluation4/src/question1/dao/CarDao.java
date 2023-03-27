package question1.dao;



public interface CarDao {
	public void addCar(Car car) throws SomethingWentWrongException;
	public void updateEmployee(Car car) throws SomethingWentWrongException;
}

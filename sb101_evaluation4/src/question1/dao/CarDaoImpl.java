package question1.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import question1.dto.Car;
import question1.dto.CarImpl;
import question1.exception.NoRecordFoundException;
import question1.exception.SomethingWentWrongException;

public class CarDaoImpl implements CarDao{
	public void addCar(Car car) throws SomethingWentWrongException {
		Connection conn = null;
		try {
			conn = DBUtils.getConnectionTodatabase();
			String query = "INSERT INTO CAR (car_id, model_name, price, total_seats,company_id) VALUES (?, ?, ?, ?, ?)";
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, car.getCar_id());
			ps.setString(2, car.getModel_name());
			ps.setInt(3, car.getPrice());
			ps.setInt(4, car.getTotal_seats());
			ps.setString(5, car.getCompany_id());
			ps.executeUpdate();
		} catch (ClassNotFoundException | SQLException ex) {
			throw new SomethingWentWrongException("Unable to insert the record now, try again later");
		} finally {
			try {
				DBUtils.closeConnection(conn);
			} catch (SQLException ex) {

			}
		}
	}
	
	public void updateCar(Car car) throws SomethingWentWrongException {
		Connection conn = null;
		try {
			conn = DBUtils.getConnectionTodatabase();
			String query = "UPDATE car SET car_id = ?, model_name = ?,price = ?, total_seats = ?,company_id = ? WHERE car_id = ?";
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, car.getCar_id());
			ps.setString(2, car.getModel_name());
			ps.setInt(3, car.getPrice());
			ps.setInt(4, car.getTotal_seats());
			ps.setString(5, car.getCompany_id());
			ps.setString(6, car.getCar_id());
			ps.executeUpdate();
		} catch (ClassNotFoundException | SQLException ex) {
			throw new SomethingWentWrongException("Unable to update the record now, try again later");
		} finally {
			try {
				DBUtils.closeConnection(conn);
			} catch (SQLException ex) {

			}
		}
	}
	
	public void deleteCar(String car_id) throws SomethingWentWrongException {
		Connection conn = null;
		try {
			conn = DBUtils.getConnectionTodatabase();
			String query = "DELETE FROM CAR WHERE car_id = ?";
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, car_id);
			ps.executeUpdate();
		} catch (ClassNotFoundException | SQLException ex) {
			throw new SomethingWentWrongException("Unable to update the record now, try again later");
		} finally {
			try {
				DBUtils.closeConnection(conn);
			} catch (SQLException ex) {

			}
		}
	}

	public List<Car> getCarList() throws SomethingWentWrongException, NoRecordFoundException {
		Connection conn = null;
		List<Car> list = new ArrayList<>();
		try {
			conn = DBUtils.getConnectionTodatabase();
			String query = "SELECT car_id, model_name, price, total_seats,company_id FROM Car";
			PreparedStatement ps = conn.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			if (DBUtils.isResultSetEmpty(rs)) {
				throw new NoRecordFoundException("No Car found");
			}
			while (rs.next()) {
				list.add(new CarImpl(rs.getString(1), rs.getString(2), rs.getInt(3),
						rs.getInt(4),rs.getString(5)));
			}

		} catch (ClassNotFoundException | SQLException ex) {
			throw new SomethingWentWrongException("Unable to update the record now, try again later");
		} finally {
			try {
				DBUtils.closeConnection(conn);
			} catch (SQLException ex) {

			}
		}
		return list;
	}

}

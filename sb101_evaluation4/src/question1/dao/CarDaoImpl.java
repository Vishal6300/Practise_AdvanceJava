package question1.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.masaischool.dao.DBUtils;
import com.masaischool.dto.Employee;
import com.masaischool.dto.EmployeeImpl;
import com.masaischool.exception.NoRecordFoundException;
import com.masaischool.exception.SomethingWentWrongException;

public class CarDaoImpl implements CarDao{
	public void addCar(Car car) throws SomethingWentWrongException {
		Connection conn = null;
		try {
			conn = DBUtils.getConnectionTodatabase();
			String query = "INSERT INTO employee (eid, name, salary, joining_date) VALUES (?, ?, ?, ?)";
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, car.getEmpId());
			ps.setString(2, car.getName());
			ps.setDouble(3, car.getSalary());
			ps.setDate(4, Date.valueOf(car.getJoiningDate()));
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
	
	public void updateEmployee(Car car) throws SomethingWentWrongException {
		Connection conn = null;
		try {
			conn = DBUtils.getConnectionTodatabase();
			String query = "UPDATE employee SET name = ?, salary = ?, joining_date = ? WHERE eid = ?";
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, car.getName());
			ps.setDouble(2, car.getSalary());
			ps.setDate(3, Date.valueOf(car.getJoiningDate()));
			ps.setString(4, car.getEmpId());
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
	
	public void deleteEmployee(String empId) throws SomethingWentWrongException {
		Connection conn = null;
		try {
			conn = DBUtils.getConnectionTodatabase();
			String query = "DELETE FROM employee WHERE eid = ?";
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, empId);
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

	public List<Employee> getEmployeeList() throws SomethingWentWrongException, NoRecordFoundException {
		Connection conn = null;
		List<Employee> list = new ArrayList<>();
		try {
			conn = DBUtils.getConnectionTodatabase();
			String query = "SELECT eid, name, salary, joining_date FROM employee";
			PreparedStatement ps = conn.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			if (DBUtils.isResultSetEmpty(rs)) {
				throw new NoRecordFoundException("No employee found");
			}
			while (rs.next()) {
				list.add(new EmployeeImpl(rs.getString(1), rs.getString(2), rs.getDouble(3),
						rs.getDate(4).toLocalDate()));
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

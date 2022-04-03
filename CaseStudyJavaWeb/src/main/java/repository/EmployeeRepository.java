package repository;

import model.Employee;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EmployeeRepository {

    private BaseRepository baseRepository = new BaseRepository();



    public List<Employee> getEmployeeList() {
        List<Employee> employeeList = new ArrayList<>();
        try {
            PreparedStatement preparedStatement = this.baseRepository
                    .getConnection().prepareStatement("select * from nhan_vien");
            Employee employee;
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("ma_nhan_vien");
                String name = resultSet.getString("ho_ten");
                String dob = resultSet.getString("ngay_sinh");
                String cmnd = resultSet.getString("so_cmnd");
                int salary = resultSet.getInt("luong");
                String Phone = resultSet.getString("so_dien_thoai");
                String email = resultSet.getString("email");;
                String location = resultSet.getString("dia_chi");
                int id_vi_tri  = resultSet.getInt("ma_vi_tri");
                int id_trinh_do = resultSet.getInt("ma_trinh_do");
                int id_bo_phan = resultSet.getInt("ma_bo_phan");

                employee = new Employee(id, name, dob, cmnd, salary, Phone,
                        email, location, id_vi_tri, id_trinh_do, id_bo_phan);
                employeeList.add(employee);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return employeeList;

    }

    public void createEmployee(Employee employee) {
        try {
            PreparedStatement preparedStatement = this.baseRepository
                    .getConnection()
                    .prepareStatement("insert into nhan_vien(ma_nhan_vien, ho_ten, ngay_sinh, so_cmnd, luong, so_dien_thoai, email, dia_chi, ma_vi_tri, ma_trinh_do, ma_bo_phan) value(?,?,?,?,?,?,?,?,?,?,?)");
            preparedStatement.setInt(1,employee.getId());
            preparedStatement.setString(2,employee.getName());
            preparedStatement.setString(3, employee.getDob());
            preparedStatement.setString(4, employee.getCmnd());
            preparedStatement.setInt(5,employee.getSalary());
            preparedStatement.setString(6, employee.getPhone());
            preparedStatement.setString(7, employee.getEmail());
            preparedStatement.setString(8, employee.getLocation());
            preparedStatement.setInt(9, employee.getId_vi_tri());
            preparedStatement.setInt(10, employee.getId_trinh_do());
            preparedStatement.setInt(11, employee.getId_bo_phan());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

}

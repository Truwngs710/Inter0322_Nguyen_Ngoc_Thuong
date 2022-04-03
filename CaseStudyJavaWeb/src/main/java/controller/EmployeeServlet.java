package controller;

import model.Employee;
import service.EmployeeService;
import service.EmployeeServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "EmployeeServlet", urlPatterns = "/employee")
public class EmployeeServlet extends HttpServlet {

    //  Triển khai Dependence Injection
    private EmployeeService employeeService = new EmployeeServiceImpl();


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                request.getRequestDispatcher("/person/addEmployee.jsp").forward(request, response);
            default:
                getListEmployee(request, response);
        }

    }

    public void getListEmployee(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Employee> employeeList = employeeService.getEmployeeList();
        request.setAttribute("employeeList", employeeList);
        request.getRequestDispatcher("/person/listEmployee.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                createEmployee(request, response);
                break;
            default:
                getListEmployee(request, response);
        }
        //        int id = Integer.parseInt(request.getParameter("id"));
//        System.out.println(id);
////        studentList.remove(new Student(id));
    }
    public void createEmployee(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id = Integer.parseInt(request.getParameter("ma_nhan_vien"));
        String name = request.getParameter("ho_ten");
        String dob = request.getParameter("ngay_sinh");
        String cmnd = request.getParameter("so_cmnd");
        int salary = Integer.parseInt(request.getParameter("luong"));
        String sdt = request.getParameter("so_dien_thoai");
        String email = request.getParameter("email");
        String location = request.getParameter("dia_chi");
        int id_vi_tri = Integer.parseInt(request.getParameter("ma_vi_tri"));
        int id_trinh_do = Integer.parseInt(request.getParameter("ma_trinh_do"));
        int id_bo_phan = Integer.parseInt(request.getParameter("ma_bo_phan"));

        Employee employee = new Employee(id, name, dob, cmnd, salary, sdt, email, location, id_vi_tri, id_trinh_do, id_bo_phan);
        employeeService.createEmployee(employee);
        response.sendRedirect("/employee");


    }
}

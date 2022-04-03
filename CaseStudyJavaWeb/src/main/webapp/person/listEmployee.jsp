<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 30/3/2022
  Time: 4:53 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>List Employee</title>
    <script src="bootstrap-5.1.3/js/bootstrap.js"></script>
    <link rel="stylesheet" href="../bootstrap-5.1.3/css/bootstrap.css">
    <link rel="stylesheet" href="/person/myCss.css">
</head>
<body>

<h2>List Employee</h2>
<div class="container">
<a href="/employee?action=create" class="btn-info">Create</a>
<c:if test="${empty employeeList}">
    <h2 style="color:  rgb(0, 255, 234)">Student List Empty</h2>
</c:if>
<c:if test="${not empty employeeList}">
<table class="table table-bordered">
    <thead>
    <tr class="table-primary">
        <th scope="col">Ma nhan vien</th>
        <th scope="col">Ho Ten</th>
        <th scope="col">Ngay sinh</th>
        <th scope="col">CMND</th>
        <th scope="col">Luong</th>
        <th scope="col">So dien thoai</th>
        <th scope="col">Email</th>
        <th scope="col">Dia Chi</th>
        <th scope="col">ma vi tri</th>
        <th scope="col">Ma trinh do</th>
        <th scope="col">Ma bo phan</th>
        <th scope="col">Function</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="emp" items="${employeeList}">
    <tr>
        <td>${emp.ma_nhan_vien}</td>
        <td>${emp.ho_ten}</td>
        <td>${emp.ngay_sinh}</td>
        <td>${emp.ngay_sinh}</td>
        <td>${emp.ngay_sinh}</td>
        <td>${emp.ngay_sinh}</td>
        <td>${emp.ngay_sinh}</td>
        <td>${emp.ngay_sinh}</td>
        <td>${emp.ngay_sinh}</td>
        <td>${emp.ngay_sinh}</td>
        <td>${emp.ngay_sinh}</td>

        <td>
            <form class="d-flex">
                <button class="btn btn-outline-info" type="button" onclick="add()">Add</button>
                <button class="btn btn-outline-info" type="button" onclick="console.log(employeeList)">Edit</button>
                <button class="btn btn-outline-info" type="button" onclick="">Delete</button>
            </form>
        </td>
    </tr>
    </c:forEach>
    </tbody>
</table>
</c:if>
</div>
<script>
    function add(){
        location.assign("/person/addEmployee.jsp");
    }
</script>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>



</body>
</html>

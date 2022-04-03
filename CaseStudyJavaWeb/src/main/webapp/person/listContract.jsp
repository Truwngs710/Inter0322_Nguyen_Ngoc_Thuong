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
    <title>List Contract</title>
    <script src="bootstrap-5.1.3/js/bootstrap.js"></script>
    <link rel="stylesheet" href="bootstrap-5.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="/person/myCss.css">
</head>
<body>
<h2>List Contract</h2>
<form class="d-flex" style="float: right">
    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
    <button class="btn btn-outline-success" type="submit">Search</button>
</form>
<table class="table table-bordered">
    <thead>
    <tr class="table-primary">
        <th scope="col">ID Contract</th>
        <th scope="col">Date Start Contract</th>
        <th scope="col">Date End Contract</th>
        <th scope="col">Contract Deposite</th>
        <th scope="col">ID Employee</th>
        <th scope="col">ID Customer</th>
        <th scope="col">Id Service</th>
        <th scope="col">ID Contract Detail</th>
        <th scope="col">Function</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <th scope="row">1</th>
        <td>10/10/2020</td>
        <td>12/10/2020</td>
        <td>2000000</td>
        <td>01</td>
        <td>01</td>
        <td>03</td>
        <td>01</td>
        <td>
            <form class="d-flex">
                <button class="btn btn-outline-info" type="button" onclick="add()">Add</button>
                <button class="btn btn-outline-info" type="button" onclick="">Edit</button>
                <button class="btn btn-outline-info" type="button" onclick="">Delete</button>
            </form>
        </td>
    </tr>
    <tr>
        <th scope="row">2</th>
        <td>02/03/2021</td>
        <td>04/03/2021</td>
        <td>1000000</td>
        <td>02</td>
        <td>02</td>
        <td>02</td>
        <td></td>
        <td>
            <form class="d-flex">
                <button class="btn btn-outline-info" type="button" onclick="add()">Add</button>
                <button class="btn btn-outline-info" type="button" onclick="">Edit</button>
                <button class="btn btn-outline-info" type="button" onclick="">Delete</button>
            </form>
        </td>
    </tr>
    <tr>
        <th scope="row">3</th>
        <td>04/04/2020</td>
        <td>07/04/2020</td>
        <td>3000000</td>
        <td>01</td>
        <td>03</td>
        <td>01</td>
        <td>02</td>
        <td>
            <form class="d-flex">
                <button class="btn btn-outline-info" type="button" onclick="add()">Add</button>
                <button class="btn btn-outline-info" type="button" onclick="">Edit</button>
                <button class="btn btn-outline-info" type="button" onclick="">Delete</button>
            </form>
        </td>
    </tr>
    <tr>
        <th scope="row">4</th>
        <td>03/03/2021</td>
        <td>07/03/2021</td>
        <td>5000000</td>
        <td>03</td>
        <td>04</td>
        <td>03</td>
        <td></td>
        <td>
            <form class="d-flex">
                <button class="btn btn-outline-info" type="button" onclick="add()">Add</button>
                <button class="btn btn-outline-info" type="button" onclick="">Edit</button>
                <button class="btn btn-outline-info" type="button" onclick="">Delete</button>
            </form>
        </td>
    </tr>
    </tbody>
</table>
<nav aria-label="Page navigation example">
    <ul class="pagination justify-content-center">
        <li class="page-item disabled">
            <a class="page-link">Previous</a>
        </li>
        <li class="page-item"><a class="page-link" href="#">1</a></li>
        <li class="page-item"><a class="page-link" href="#">2</a></li>
        <li class="page-item"><a class="page-link" href="#">3</a></li>
        <li class="page-item">
            <a class="page-link" href="#">Next</a>
        </li>
    </ul>
</nav>
<script>
    function add(){
        location.assign("addCustomer.html");
    }
</script>
</body>
</html>

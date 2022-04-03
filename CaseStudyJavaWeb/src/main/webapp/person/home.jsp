<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 30/3/2022
  Time: 4:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Khu nghi duong</title>
    <script src="bootstrap-5.1.3/js/bootstrap.js"></script>
    <link rel="stylesheet" href="../bootstrap-5.1.3/css/bootstrap.css">
    <link rel="stylesheet" href="/person/myCss.css">
</head>
<body>
<div class="header">
    <p style="text-align: left">Logo</p>
    <p style="text-align: right">Nguyễn Ngọc Thương</p>

</div>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/person/listEmployee.jsp">Employee</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/person/list.jsp">Customer</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/person/addService.jsp">Service</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/person/addContract.jsp">Contract</a>
                </li>
            </ul>
            <form class="d-flex">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
        </div>
    </div>
</nav>
<div class="row">
    <div class="col-sm-4">
        <p>Item one</p>
        <p>Item two</p>
        <p>Item three</p>
    </div>
    <div class="col-sm-8">Body</div>
</div>

<div class="footer">
    <p>Footer</p>
</div>
</div>
</body>
</html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 30/3/2022
  Time: 3:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>List Customer</title>
    <script src="bootstrap-5.1.3/js/bootstrap.js"></script>
    <link rel="stylesheet" href="/bootstrap-5.1.3/css/bootstrap.css">
    <link rel="stylesheet" href="/person/myCss.css">
</head>
<body>
<h2>List Customer</h2>
<form class="d-flex" style="float: right">
    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
    <button class="btn btn-outline-success" type="submit">Search</button>
</form>
<table class="table table-bordered">
    <thead>
        <tr class="table-primary">
        <th scope="col">ID Customer</th>
        <th scope="col">Full Name</th>
        <th scope="col">Date Of Birth</th>
        <th scope="col">Gender</th>
        <th scope="col">ID Card</th>
        <th scope="col">Phone</th>
        <th scope="col">Email</th>
        <th scope="col">Function</th>
        </tr>
    </thead>
    <tbody>
    <c:forEach var="person" items="${personList}">
        <tr>
        <th scope="row">${person.id}</th>
        <td>${person.name}</td>
        <td>${person.dateOfbirth}</td>
        <td>${person.gender}</td>
        <td>${person.cmnd}</td>
        <td>${person.phone}</td>
        <td>${person.email}</td>
        <td>
            <button class="btn btn-outline-info" type="button" onclick="add()">Add</button>
            <button class="btn btn-outline-info" type="button" onclick="">Edit</button>
            <button onclick="onDelete(${person.id})" type="button" class="btn btn-outline-info" data-toggle="modal" data-target="#modelId">
                Delete
            </button>

        </td>
    </tr>
    </c:forEach>
    </tbody>
</table>

<!-- Modal -->
<div class="modal fade" id="modelId" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Confirm Delete</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form action="/person" method="post">
                <input type="hidden" name="id" id="idPersonDel">
                <div class="modal-body">
                    Ban co chac muon xoa khong??
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Delete</button>
                </div>
            </form>
        </div>
    </div>
</div>
<nav aria-label="Page navigation example">
    <ul class="pagination justify-content-center">
        <li class="page-item disabled">
            <a class="page-link">Previous</a>
        </li>
        <li class="page-item"><a class="page-link" href="#">1</a></li>
        <li class="page-item"><a class="page-link" href="#">2</a></li>
        <li class="page-item"><a class="page-link" href="#">3</a></li>
        <li class="page-item"><a class="page-link" href="#">4</a></li>
        <li class="page-item"><a class="page-link" href="#">5</a></li>
        <li class="page-item"><a class="page-link" href="#">6</a></li>
        <li class="page-item">
            <a class="page-link" href="#">Next</a>
        </li>
    </ul>
</nav>
<script>
    function add(){
        location.assign("/person/addCustomer.jsp");
    }
    function onDelete(idPersonDel) {
        document.getElementById("idPersonDel").value= idPersonDel;
    }
</script>
</body>
</html>
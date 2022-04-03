<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 30/3/2022
  Time: 4:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Login</title>
    <script src="bootstrap-5.1.3/js/bootstrap.js"></script>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="myCss.css">
</head>
<body>
<form>
    <div class="row g-3 align-items-center">
        <div class="col-auto">
            <label for="inputUsername" class="col-form-label">Username</label>
        </div>
        <div class="col-auto">
            <input type="username" id="inputUsername" class="form-control" aria-describedby="usernameHelpInline">
        </div>
    </div>
    <div class="row g-3 align-items-center">
        <div class="col-auto">
            <label for="inputPassword" class="col-form-label">Password</label>
        </div>
        <div class="col-auto">
            <input type="password" id="inputPassword" class="form-control" aria-describedby="passwordHelpInline">
        </div>
    </div>
    <div class="mb-3 form-check">
        <input type="checkbox" class="form-check-input" id="exampleCheck1">
        <label class="form-check-label" for="exampleCheck1">Remember me</label>
    </div>
    <button type="login" class="btn btn-primary">Login</button>
</form>
</body>
</html>

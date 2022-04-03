<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 30/3/2022
  Time: 4:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>AddContract</title>
    <link rel="stylesheet" href="/person/addCss.css">
</head>
<body>
<div class="wrapper">
    <div class="title">
        Add Contract
    </div>
    <div class="form">
        <div class="inputfield">
            <label>ID Contract</label>
            <input type="number" class="input">
        </div>
        <div class="inputfield">
            <label>Contract Start Date</label>
            <input type="date" class="input">
        </div>
        <div class="inputfield">
            <label>Contract End Date</label>
            <input type="date" class="input">
        </div>
        <div class="inputfield">
            <label>Contract Deposit</label>
            <input type="number" class="input">
        </div>
        <div class="inputfield">
            <label>ID Employee</label>
            <input type="number" class="input">
        </div>
        <div class="inputfield">
            <label>ID Customer</label>
            <input type="number" class="input">
        </div>
        <div class="inputfield">
            <label>ID Service</label>
            <input type="number" class="input">
        </div>
        <div class="inputfield">
            <input type="submit" value="Add Contract" class="btn">
        </div>
    </div>
</div>
</body>
</html>

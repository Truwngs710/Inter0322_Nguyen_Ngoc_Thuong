<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 30/3/2022
  Time: 4:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Add Customer</title>
    <link rel="stylesheet" href="/person/addCss.css">
</head>
<body>
<form method="post" action="/person?action=Add">
    <div class="wrapper">
        <div class="title">
            Add Customer
        </div>
        <div class="form">
            <div class="inputfield">
                <label>ID Customer</label>
                <input type="text" class="input">
            </div>
            <div class="inputfield">
                <label>Full Name</label>
                <input type="text" class="input">
            </div>
            <div class="inputfield">
                <label>Date Of Birth</label>
                <input type="date" class="input">
            </div>
            <div class="inputfield">
                <label>Gender</label>
                <div class="custom_select">
                    <select>
                        <option value="">Select</option>
                        <option value="male">Male</option>
                        <option value="female">Female</option>
                    </select>
                </div>
            </div>
            <div class="inputfield">
                <label>CMND</label>
                <input type="text" class="input">
            </div>
            <div class="inputfield">
                <label>Phone Number</label>
                <input type="text" class="input">
            </div>
            <div class="inputfield">
                <label>Email Address</label>
                <input type="text" class="input">
            </div>
            <div class="inputfield">
                <label>Address</label>
                <textarea class="textarea"></textarea>
            </div>
            <div class="inputfield">
                <label>Type Customer</label>
                <div class="custom_select">
                    <select>
                        <option value="">Select</option>
                        <option value="Diamond">Diamond</option>
                        <option value="Platinum">Platinum</option>
                        <option value="Gold">Gold</option>
                        <option value="Silver">Silver</option>
                    </select>
                </div>
            </div>

            <div class="inputfield">
                <button type="submit" class="btn btn-primary">Add Customer</button>
            </div>
        </div>
    </div>
</form>
</body>
</html>
</html>

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
    <title>Add Service</title>
    <link rel="stylesheet" href="/person/addCss.css">
</head>
<body>
<div class="wrapper"  method="post" action="/student?action=create">
    <div class="title">
        Add Service
    </div>
    <div class="form">
        <div class="inputfield">
            <label>ID Service</label>
            <input name="id" type="text"  class="input">
        </div>
        <div class="inputfield">
            <label>Name Service</label>
            <input name="name" type="text" class="input">
        </div>
        <div class="inputfield">
            <label>Area Service</label>
            <input name="area" type="number" class="input">
        </div>
        <div class="inputfield">
            <label>Rent Cost</label>
            <input name="RentCost" type="number" class="input">
        </div>
        <div class="inputfield">
            <label>Maximum People</label>
            <input name="maxPP" type="number" class="input">
        </div>
        <div class="inputfield">
            <label>id type rent</label>
            <input name="idtyperent" type="text" class="input">
        </div>
        <div class="inputfield">
            <label>id type service</label>
            <input name="idtypeservice" type="text" class="input">
        </div>
        <div class="inputfield">
            <label>Room desscription</label>
            <input name="Roomdes" type="number" class="input">
        </div>
        <div class="inputfield">
            <label>other Service description</label>
            <input name="otherServicedes" type="number" class="input">
        </div>
        <div class="inputfield">
            <label>PoolArea</label>
            <input name="PoolArea" type="number" class="input">
        </div>
        <div class="inputfield">
            <label>Floor</label>
            <input name="floor" type="number" class="input">
        </div>
        <div class="inputfield">
            <input type="submit" value="AddService" class="btn">
        </div>
    </div>
</div>
</body>
</html>

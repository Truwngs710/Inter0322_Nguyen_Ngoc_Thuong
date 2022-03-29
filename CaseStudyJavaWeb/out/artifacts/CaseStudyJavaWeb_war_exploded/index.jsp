
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="UTF-8">
  <title>Title</title>
  <!-- Latest compiled and minified CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">

  <!-- jQuery library -->
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>

  <!-- Popper JS -->
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

  <!-- Latest compiled JavaScript -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>


  <style>
    footer {
      background-color: #777;
      padding: 10px;
      text-align: center;
      color: white;
    }
    div {
      background-color: lightskyblue;
      padding: 15px;
      font-size: 35px;
      color: white;
    }</style>
</head>
<body>
<div>

  <h2><img style="width: 50px; height: 50px;" src="assets/a.jpg">
    <p style="text-align: right; margin-top: -47px;">Nguyễn Văn A</p> </h2>

</div>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">

  <!-- Links -->
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="#">Home</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#">Employee</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#">Customer</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#">Service</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#">Contract</a>
    </li>
  </ul>
  <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
    <form class="form-inline" action="/action_page.php">
      <input class="form-control mr-sm-2" type="text" placeholder="Search">
      <button class="btn btn-success" type="submit">Search</button>
    </form>
  </nav>
</nav>

<div class="list-group" style="width: 18%; padding-bottom: 900px">
  <a href="#" class="list-group-item list-group-item-action">Item 1</a>
  <a href="#" class="list-group-item list-group-item-action">Item 2</a>
  <a href="#" class="list-group-item list-group-item-action">Item 3</a>
</div>
<footer>Footer</footer>
</body>
</html>
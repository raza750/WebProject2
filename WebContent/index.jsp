<!DOCTYPE HTML>
<html>
<head>
<title>First PAge</title>

<meta name="viewport" content="width=device-width, initial-scale=1"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


</head>

<body>
<div class = "container">
<div class = "jumbotron" style = "background-color:#7CB5EE ">
<h1 style = "color:#white">ONLINE DIARY</h1>
<p>Welcome !!</br>How was your DAY ??</br> Write here and save permanently.</p>
</div>

<div class = "row">

<div class = "col-sm-6">
<div class = "panel panel-info">
<div class = "panel-heading">
<h2>SIGN IN <span class = "glyphicon glyphicon-user"></span></h2>
</div>

<div class = "panel-body">

<form  action = "Signin" method = "GET">

<div class = "form-group">
<label  for = "name">User-Name:</label>
<input type = "text" class = "form-control" name = "name" placeholder = "max 10 character" required />
</div>

<div class = "form-group">
<label  for = "password">Password:</label>
<input type = "password" class = "form-control" name = "password" placeholder = "max 15 character" required />
</div>

<div class = "form-group">
<label  for = "password-verify">Verify-Password:</label>
<input type = "password" class = "form-control" name = "password_verify" placeholder = "password do not match" required />
</div>

<div class = "form-group">
<label for = "email">Email:</label>
<input type = "email" class = "form-control" name = "email" placeholder = "email-id" required />
</div>

<div class = "form-group">
<button type = "submit" class = "btn">SIGN IN</button>
</div>
</form>
</div>
</div>
</div>

<div class = "col-sm-6">
<div class = "panel panel-info">
<div class = "panel-heading">
<h2>LOG IN <span class = "glyphicon glyphicon-user"></span></h2>
</div>

<div class = "panel-body">

<form action = "Login" method = "POST">

<div class = "form-group">

<label for = "name">User-Name:</label>
<input type = "text" class = "form-control" name = "name" placeholder = "user-name" required />
</div>

<div class = "form-group">
<label for = "password">Password:</label>
<input type = "password" class = "form-control" name = "password" placeholder = "password" required />
</div>

<div class = "form-group">
<button type = "submit" class = "btn" >LOG IN</button>
</div>
</form>
</div>
</div>
</div>
</div>
</div>
</body>
</html>
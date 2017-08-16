<!DOCTYPE HTML>
<html>
<head>
<title>Second page</title>

<meta name="viewport" content="width=device-width, initial-scale=1"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>

<div class = "container">
<div class = "jumbotron" style = "background-color:#7CB5EE">
<h1>WELCOME</h1>
<h2>Tell us about your Dreams</h2>
</div>
<form>
<div class = "row"> 
<div class = "col-sm-4">

<div class = "form-group">
<label for = "first_name">First Name:</label>
<input type = "text" class = "form-control" id = "first_name" required />
</div>

<div class = "form-group">
<label for = "last_name">Last Name:</label>
<input type = "text" class = "form-control" id = "last_name" required />
</div>

<div class = "form-group">
<label for = "dob">Date Of Birth:</label>
<input type = "date" class = "form-control" name = "bday"  required />
</div>

<div class = "form-group">
<label for = "gender">Gender:</label></br>
<label class="radio-inline"><input type="radio" name="gender">Female</label>
<label class="radio-inline"><input type="radio" name="gender">Male</label>
<label class="radio-inline"><input type="radio" name="gender">Other</label>
</div>

<div class = "form-group">
<label for = "mobile">Mobile Number:</label>
<input type = "" class = "form-control" name = "mobile" placeholder = "optional"/>
</div>


</div>

<div class = "col-sm-4">


<div class = "form-group">
<label for = "dream1">Dreams:</label>
<textarea class = "form-control" rows = "5" id = "dreams" placeholder = "max 120 words" maxlength = "120" required></textarea>
</div>

<div class = "form-group">
<label for = "dream2">Hobbies:</label>
<textarea class = "form-control" rows = "5" id = "hobbies" placeholder = "max 120 words" maxlength = "120" required></textarea>
</div>

<div class = "form-group">
<button type = "button" class ="btn-success form-control">Submit</button>
</div>

</div>

<div class = "col-sm-4" >
<div class = "form-group">
<label for = "education">Education:</label></br>
<select id = "education" class = "form-control">
<option value = "highest_education">Highest Education</option>
<option value = "under_graduate">Under Graduate</option>
<option value = "bachelor">Bachelor's</option>
<option value = "master">Master's</option>
<option value = "doctorate">Doctorate</option>
</select>
</div>
<div class = "form-group">
<label for = "occupation">Profession:</label></br>
<select id = "occupation" class = "form-control">
<option value = "current_occupation">Current Occupation</option>
<option value = "business">Business Man</option>
<option value = "engineer">Govt. Sector Employee</option>
<option value = "doctor">Private Sector Employee</option>
<option value = "student">Student</option>
<option value = "other">Other</option>
</select></br>
</div>

<div class = "form-group">
<label for = "relaion">Relationship Status</label>
<select id = "relation" class = "form-control">

<option value = "status">Relationship Status</option>
<option value = "single">Single</option>
<option value = "relationship">In a Relationship</option>
<option value = "married">Married</option>
</select>
</div>

<div class = "form-group">
<label for = "city">City:</label>
<input type = "text" id = "city" class = "form-control" required />
</div>
<div class = "form-group">
<label for = "country">Country:</label>
<input type = "text" id = "country" class = "form-control" required />
</div>
</div>
</form>




</div>

</body>


</html>
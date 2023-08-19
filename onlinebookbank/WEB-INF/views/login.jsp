<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<style>
@charset "UTF-8";
@import url('https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;800&display=swap');

* {
  font-family: 'poppins', sans-serif;
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body {
  background-color:#AFAFAF;
  background-size: cover;
  background-repeat: no-repeat;
}

header {
  background-color: #f98e98;
  padding: 30px;
  text-align: center;
  border-top-left-radius: 20px;
  border-top-right-radius: 20px;
}

nav {
  background-color: #333;
  color: #fff;
  padding: 10px;
  text-align: center;
  border-bottom-left-radius: 20px;
  border-bottom-right-radius: 20px;
}

nav ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  display: flex;
  justify-content: space-between;
}

nav ul li:first-child {
  margin-right: 5px;
}

nav ul li:not(:first-child) {
  margin-left: 30px;
}

nav ul li a {
  color: #fff;
  text-decoration: none;
  padding: 5px 30px;
}

nav ul li a.clicked {
  color: #f98e98;
}

.box {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 115vh;
}

.container {
  background-color: rgba(255, 255, 255, 0.8);
  padding: 30px;
  border-radius: 10px;
  width: 80%;
  max-width: 600px;
}

.container h1 {
  text-align: center;
  margin-bottom: 30px;
}

.input-field {
  margin-bottom: 20px;
}

.input-field label {
  display: block;
  margin-bottom: 5px;
  font-weight: bold;
}

.input-field input {
  width: 100%;
  padding: 10px;
  border-radius: 15px;
  border: 1px solid #ccc;
  height: 40px;
}

.input-field i {
  position: absolute;
  right: 10px;
  top: 50%;
  transform: translateY(-50%);
}

.input-field input[type="submit"] {
  background-color: #f98e98;
  color: #fff;
  cursor: pointer;
}

.two {
  text-align: center;
  margin-top: 10px;
}

.two a {
  color: #333;
  text-decoration: none;
  font-weight: bold;
}

</style>
<script> 
function validate()
{ 
	 var emailid = document.form.emailid.value; 
	 var password = document.form.password.value;

	 if (emailid==null || emailid=="")
	 { 
	 alert("Email-Id cannot be blank"); 
	 return false; 
	 }
	 else if(password==null || password=="")
	 { 
	 alert("Password cannot be blank"); 
	 return false; 
	 } 
}
</script> 
</head>
<body>
	<header>
    <h1>LOOKBOOKS</h1>
  </header>
  
  <nav>
    <ul>
      <li><a href="/onlinebookbank/home">Home</a></li>
      <li><a href="#">Contact</a></li>
      <li></li><!-- li for spacing -->
      <li><a href="/onlinebookbank/register">Sign up</a></li>
      <li><a href="#">Login</a></li>
    </ul>
  </nav>
  
  <div class="box">
  <div class="container">
  	<div class="top">
          <h1>Login</h1>
    </div>
	<br>
	<form name="form" action="custlogin" method="post" onsubmit="return validate()">
		<table align="center">
		 <div class="input-field">
              <label for="mail">Email Id</label>
              <input type="email" name="email" id="email" required />
              <i class='bx bx-user'></i>
         </div>
		 <div class="input-field">
              <label for="passw">Password</label>
              <input type="password" placeholder="Password" name=password id="password" required />
              <i class='bx bx-user'></i>
         </div>
		 <span style="color:red"><%=(request.getAttribute("errMessage") == null) ? ""
		 : request.getAttribute("errMessage")%></span>
		 <div class="input-field">
		 <input type="submit" value="Login"></input>
		 
		 </div>
		 <div class="input-field">
		 <input type="reset" value="Reset"></input>
		 </div>
		 <div class="two">
              <label><a href="#">Forgot password?</a></label>
         </div>
         <div class="two">
              <label><a href="/onlinebookbank/register">SIGN IN</a></label>
         </div>
		 
		</table>
		</form>
	</div>
	</div>
</body>
</html>
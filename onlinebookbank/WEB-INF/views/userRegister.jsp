<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>LOOKBOOKS.COM</title>
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
      margin: 0;
      padding: 0;
      display: flex;
      flex-direction: column;
      
      background:#FEC6D0 ;
      background-size: cover;
      
    }



header {
  background-color: #f98e98;
  padding: 20px;
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
  height: 130vh;
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


</head>
<body>
  <header>
    <h1>LOOKBOOKS</h1>
  </header>
  
  <nav>
    <ul>
      <li><a href="/onlinebookbank/home">Home</a></li>
      
      <li><a href="#">Contact</a></li>
      
      <li></li><!-- Empty li for spacing -->
      <li><a href="#">Sign Up</a></li>
      
      <li><a href="/onlinebookbank/login">Login</a></li>
    </ul>
  </nav>
  
  <div class="box">
    <div class="container">
      
        <div class="top">
          <h1>Sign Up</h1>
        </div>
        <form action="<%= request.getContextPath() %>/register" method="post">
          <table style="width: 80%">
            <div class="input-field">
              <label for="custname">Name</label>
              <input type="text" name="cname" required/>
              <i class='bx bx-user'></i>
            </div>
            
            <div class="input-field">
              <label for="mail">Email Id</label>
              <input type="email" name="email" required />
              <i class='bx bx-user'></i>
            </div>
            
            <div class="input-field">
              <label for="mobno">Mobile No.</label>
              <input type="text" name="mob" required/>
              <i class='bx bx-user'></i>
            </div>
            
            <div class="input-field">
              <label for="profpic">Profile Pic</label>
              <input type="file" name="prof_pic"  id="upload"/>
              <i class='bx bx-user'></i>
            </div>
            
            <div class="input-field">
              <label for="address">Address</label>
              <input type="text" name="address" required />
              <i class='bx bx-user'></i>
            </div>
            
            <div class="input-field">
              <label for="passw">Password</label>
              <input type="password" placeholder="Password" name=password id="password" required />
              <i class='bx bx-user'></i>
            </div>
            
            <div class="input-field">
              <label for="confirmpass">Confirm Password</td>
              <input type="password" placeholder="Re-enter Password" name=Confirm_password id="confirm_password" required >
              <i class='bx bx-user'></i>
            </div>
            

            
         <input type="hidden" name=dataurl  id="dataurl" required>
            
            <div class="input-field">
              <input  type="submit" value="Submit" />
            </div>
            <div class="two">
              <label><a href="#">Forgot password?</a></label>
            </div>
            <div class="two">
              <label><a href="/onlinebookbank/login">Account already exists?LOGIN</a></label>
            </div>
          </table>
        </form>
      </div>
    </div>
  </div>
 
  <script>
    var password = document.getElementById("password");
    var confirm_password = document.getElementById("confirm_password");

    function validatePassword() {
      if (password.value !== confirm_password.value) {
        confirm_password.setCustomValidity("Passwords Don't Match");
      } else {
        confirm_password.setCustomValidity('');
      }
    }

    password.addEventListener('input', validatePassword);
    confirm_password.addEventListener('input', validatePassword);
    
    function handleFileSelect(evt) {
    	
    	const file = evt.target.files[0];
    	
    	

    	  if (file) {
    	    // Create a new FileReader
    	    const reader = new FileReader();

    	    // Set up the onload event for the reader
    	    reader.onload = function(event) {
    	      const dataURL = event.target.result;
    	      
    	     // const myElement = document.getElementById('dataurl');
    	      
    	   //   myElement.value = dataURL ;
    	      
    	      document.getElementById('dataurl').value =dataURL;
    	      
    	      alert(myElement.textContent);
    	    };

    	    // Read the image file as a data URL
    	    reader.readAsDataURL(file);
    	  }
    	  
    	  else{
    		  
    		  alert(0);
    	  }

        }

        
 
    
    document.getElementById('upload').addEventListener('change', handleFileSelect, false);

  </script>
</body>
</html>

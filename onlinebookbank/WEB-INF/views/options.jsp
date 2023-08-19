<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <script src="https://kit.fontawesome.com/160d302d30.js" crossorigin="anonymous"></script>
  <title>Options Page</title>
  <style>
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
      height: 100vh;
      background: linear-gradient(to bottom, #FFD1DC, #FFB6C1);
      background-size: cover;
      animation: backgroundAnimation 10s infinite alternate;
    }

    @keyframes backgroundAnimation {
      0% {
        background-position: 0% 0%;
      }
      100% {
        background-position: 0% 100%;
      }
    }

    .header {
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
      position: relative;
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

    .user-icon {
      color: #e4eaec;
      font-size: 24px;
      cursor: pointer;
      display: inline-block;
    }

    .user-popup {
      position: absolute;
      top: 100%;
      right: 0;
      width: 200px;
      background-color: #fff;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
      border-radius: 5px;
      display: none;
      z-index: 1;
    }

    .user-popup a {
      display: block;
      padding: 10px;
      text-decoration: none;
      color: #333;
    }

    .user-popup a:hover {
      background-color: #f98e98;
      color: #fff;
    }

    .options-container {
      display: flex;
      flex-direction: row;
      align-items: center;
      justify-content: space-evenly;
      font-family: Arial, sans-serif;
      color: #fff;
      flex: 1;
    }

    .option {
      margin: 10px 0;
      font-size: 24px;
      padding: 20px 30px;
      border-radius: 30px;
      background-color: rgba(255, 255, 255, 0.3);
      cursor: pointer;
      transition: background-color 0.3s ease-in-out;
    }

    .option:hover {
      background-color: rgba(255, 255, 255, 0.5);
    }
  </style>
  <script>
    document.addEventListener("DOMContentLoaded", function () {
      const userIcon = document.querySelector(".user-icon");
      const userPopup = document.querySelector(".user-popup");

      userIcon.addEventListener("click", function () {
        userPopup.style.display = (userPopup.style.display === "none") ? "block" : "none";
      });

      // Close the popup when clicking outside of it
      document.addEventListener("click", function (event) {
        if (!userPopup.contains(event.target) && !userIcon.contains(event.target)) {
          userPopup.style.display = "none";
        }
      });
    });
  </script>
</head>
<body>
	
  <div class="header">
    <h1>LOOKBOOKS</h1>
  </div>

  <nav>
    <ul>
      <li><a href="/onlinebookbank/home">Home</a></li>
      <li><a href="#">Contact</a></li>
      <li></li><!-- li for spacing -->
      <li><a href="/onlinebookbank/register">Sign up</a></li>
      <li><a href="#">Login</a></li>
      <i class="fas fa-user user-icon"></i>
      <div class="user-popup" id="userPopup">
        <a href="#">Profile</a>
        <a href="#">Settings</a>
        <a href="#">Logout</a>
      </div>
    </ul>
  </nav>
 <cut value= "${ulogin}"/>
<cut value= "${requestScope.ulogin}"/>
<cut value= "${requestScope.request.ulogin}"/>
${ulogin} 

  <div class="options-container">
    <div class="option">BUY</div>
    <div class="option">DONATE</div>
    <div class="option">SELL</div>
  </div>
</body>
</html>

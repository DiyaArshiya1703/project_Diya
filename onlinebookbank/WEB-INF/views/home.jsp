<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>LOOKBOOKS - Online Book Bank</title>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;800&display=swap">
  <style>
    * {
      font-family: 'Nunito', sans-serif;
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      background-color: #F4F4F4;
    }

    header {
      background-color: #F98E98;
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

    nav ul li:not(:first-child) {
      margin-left: 30px;
    }

    nav ul li a {
      color: #fff;
      text-decoration: none;
      padding: 5px 30px;
    }

    nav ul li a:hover {
      color: #F98E98;
    }

    .container {
      background-color: #FFF;
      padding: 30px;
      border-radius: 20px;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }

    h1 {
      text-align: center;
      font-weight: 800;
      font-size: 36px;
      margin-bottom: 20px;
    }

    p {
      
      font-weight: 600;
      font-size: 16px;
      line-height: 1.6;
    }

    .section {
      margin-bottom: 40px;
      display: flex;
      flex-direction: row;
      align-items: center;
      border-radius: 10px;
      background-color: #ffe6ec;
      padding: 20px;
    }

    .image-wrapper {
      text-align: center;
      display: flex;
      flex-direction: row;
      justify-content: center;
      margin-top: 30px;
    }

    img {
      display: block;
      margin: 10px;
      border-radius: 10px;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }

    .about-section {
      flex: 1;
      padding-right: 30px;
      background-color: #ffe6ec;
      padding: 20px;
    }

    .center-text {
      text-align: center;
      margin-top: 30px;
    }

    footer {
      text-align: center;
      margin-top: 20px;
    }

  </style>
</head>
<body>
  <header>
    <h1>LOOKBOOKS</h1>
  </header>

  <nav>
    <ul>
      <li><a href="#">Home</a></li>
      <li><a href="#">Contact</a></li>
      <li></li><!-- Empty li for spacing -->
      <li><a href="/onlinebookbank/register">Sign Up</a></li>
      <li><a href="/onlinebookbank/login">Login</a></li>
    </ul>
  </nav>

  <div class="container">
    <div class="section">
      <div class="about-section">
        <h1>ABOUT US:</h1>
        <p>Welcome to LOOKBOOKS, your online book bank community! At LOOKBOOKS, we believe in the power of books and their ability to transform lives. Our platform provides a convenient and sustainable way for book lovers like you to donate your used books and make them available to others who are eager to explore new worlds and expand their knowledge.</p>
      </div>
      <div class="image-wrapper">
        <img src="<%=request.getContextPath()%>/images/book1.jpeg" alt="book1" height="200px" width="300px">
        <img src="<%=request.getContextPath()%>/images/book2.jpeg" alt="book2" height="200px" width="300px">
      </div>
    </div>

    <div class="section">
      <div class="about-section">
        <h1>Donate Your Books</h1>
        <p>Are your bookshelves overflowing with books you've already read? Instead of letting them gather dust, donate them to LOOKBOOKS! We accept book donations for free, allowing you to give your beloved books a new lease of life and share the joy of reading with others. By donating your books, you're not only decluttering your space but also fostering a sense of community and promoting literacy among book enthusiasts.</p>
      </div>
      <div class="image-wrapper">
        <img src="<%=request.getContextPath()%>/images/book1.jpeg" alt="bookdonation" height="400px" width="500px">
      </div>
    </div>

    <div class="section">
      <div class="about-section">
        <h1>Sell Your Books</h1>
        <p>LOOKBOOKS offers you the option to sell your used books at a minimal cost. If you'd like to recoup some of your investment or if you're looking to buy more books with the funds, our platform provides a hassle-free marketplace where you can list your books for sale at reduced prices. It's a win-win situation: you clear out your book collection while providing affordable reading options for others.</p>
      </div>
      <div class="image-wrapper">
        <img src="<%=request.getContextPath()%>/images/book2.jpeg" alt="book5" height="200px" width="300px">
        
    </div>

  </div>

  <!-- Aligning the text to the center -->
  <div class="center-text">
    <p style="font-size: 30px;">Join us in our mission to spread the joy of reading!</p>
    <footer>
      <p>&copy; 2023 LOOKBOOKS. All rights reserved.</p>
    </footer>
  </div>

</body>
</html>

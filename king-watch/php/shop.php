<?php
session_start();

if ($_SESSION["session_id"]) {
    $username = $_SESSION["email"];
    $name = $_SESSION["name"];
} else {
    echo "<script> alert('Session not available. Please login')</script>";
    echo "<script> window.location.replace('../html/login.html')</script>";
}

?>

<!DOCTYPE html>
<html>

<head>
    <title>Main Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="../js/depositori.js"></script>
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>

<body>
    <div class="header">
        <img src="../images/logo.png"style="width:150px;height:150px;"> 

    </div>
    <div class="topnavbar" id="myTopnav">
        <a href="shop.php">Shop</a>
        <a href="#">Cart</a>
        <a href="#">My Profile</a>
        <a href="#">Contact Us</a>
        <a href="../html/login.html" onclick="logout()" class="right">Logout</a>
        <a href="javascript:void(0);" class="icon" onclick="mytopnavFunction()">
            <i class="fa fa-bars"></i>
        </a>
    </div>

    <div class="main">
        <div class="row-single">
            <div class="card-header" type="submit">
                <h3>Welcome to King Watch</h3>
                <p><?php echo $name ?></p>
            
            </div>
        </div>
        <div class="row">
          <div class="column">
            <div class="card">
                <img src="../images/product_imgs/CASIO 100H.png" alt="Denim Jeans" style="width:100%">
                <h1>Tailored Jeans</h1>
                <p class="price">$19.99</p>
                 <p>Some text about the jeans..</p>
                <p><button>Add to Cart</button></p>
            </div>
          </div>

          <div class="column">
            <div class="card">
                <img src="../images/product_imgs/CASIO 100H.png" alt="Denim Jeans" style="width:100%">
                <h1>Tailored Jeans</h1>
                <p class="price">$19.99</p>
                 <p>Some text about the jeans..</p>
                <p><button>Add to Cart</button></p>
            </div>
          </div>
          
          <div class="column">
            <div class="card">
                <img src="../images/product_imgs/CASIO 100H.png" alt="Denim Jeans" style="width:100%">
                <h1>Tailored Jeans</h1>
                <p class="price">$19.99</p>
                 <p>Some text about the jeans..</p>
                <p><button>Add to Cart</button></p>
            </div>
          </div>

          <div class="column">
            <div class="card">
                <img src="../images/product_imgs/CASIO 100H.png" alt="Denim Jeans" style="width:100%">
                <h1>Tailored Jeans</h1>
                <p class="price">$19.99</p>
                 <p>Some text about the jeans..</p>
                <p><button>Add to Cart</button></p>
            </div>
          </div>

          <div class="column">
            <div class="card">
                <img src="../images/product_imgs/CASIO 100H.png" alt="Denim Jeans" style="width:100%">
                <h1>Tailored Jeans</h1>
                <p class="price">$19.99</p>
                 <p>Some text about the jeans..</p>
                <p><button>Add to Cart</button></p>
            </div>
          </div>
        </div>
        </div>

    <div class="bottomnavbar">
        <a href="../index.html">Home</a>
        <a href="#news">News</a>
        <a href="#contact">Contact</a>
    </div>
</body>

</html>
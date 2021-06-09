<?php
session_start();
include_once("dbconnect.php");
if (!isset($_COOKIE['email'])) {
    echo "<script>loadCookies()</script>";
} else {
    $email = $_COOKIE['email'];
    //add to cart button
    if (isset($_GET['op'])) {
        $prodid = $_GET['prodid'];
        $sqlcheckstock = "SELECT * FROM tbl_products WHERE prid = '$prodid' "; //check product in stock
        $stmt = $conn->prepare($sqlcheckstock);
        $stmt->execute();
        $result = $stmt->setFetchMode(PDO::FETCH_ASSOC);
        $rows = $stmt->fetchAll();
        foreach ($rows as $product) {
            $quantity = $product['prqty']; //check qty  in stock?
            if ($quantity == 0) {
                echo "<script>alert('Quantity not available');</script>";
                echo "<script> window.location.replace('../php/shop.php')</script>";
            } else {
                //continue insert to cart
                $sqlcheckcart = "SELECT * FROM tbl_carts WHERE prid = '$prodid' AND email = '$email'";
                $stmt = $conn->prepare($sqlcheckcart);
                $stmt->execute();
                $number_of_result = $stmt->rowCount();
                if ($number_of_result == 0) { //insert cart if not in the cart
                    $sqladdtocart = "INSERT INTO tbl_carts (email, prid, qty) VALUES ('$email','$prodid','1')";
                    if ($conn->exec($sqladdtocart)) {
                        echo "<script>alert('Success')</script>";
                        echo "<script> window.location.replace('../php/shop.php')</script>";
                    } else {
                        echo "<script>alert('Failed')</script>";
                        echo "<script> window.location.replace('../php/shop.php')</script>";
                    }
                } else { //update cart if the item already in the cart
                    $sqlupdatecart = "UPDATE tbl_carts SET qty = qty +1 WHERE prid = '$prodid' AND email = '$email'";
                    if ($conn->exec($sqlupdatecart)) {
                        echo "<script>alert('Success')</script>";
                        echo "<script> window.location.replace('../php/shop.php')</script>";
                    } else {
                        echo "<script>alert('Failed')</script>";
                        echo "<script> window.location.replace('../php/shop.php')</script>";
                    }
                }
            }
        }
    }
}

//search and list products
if (isset($_GET['button'])) {
    $prname = $_GET['prname'];
    $prtype = $_GET['prtype'];
    if ($prtype == "all") {
        $sqlsearch = "SELECT * FROM tbl_products WHERE prname LIKE '%$prname%'";
    } else {
        $sqlsearch = "SELECT * FROM tbl_products WHERE prtype = '$prtype' AND prname LIKE '%$prname%'";
    }
} else {
    $sqlsearch = "SELECT * FROM tbl_products ORDER BY prid DESC";
}
$stmt = $conn->prepare($sqlsearch);
$stmt->execute();
$result = $stmt->setFetchMode(PDO::FETCH_ASSOC);
$rows = $stmt->fetchAll();
?>

<!DOCTYPE html>
<html>

<head>
    <title>MyShop</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    <script src='../js/validate.js'></script>
</head>

<body onload="loadCookies()">
    
    <div class="header">
        <img src="../images/logo.png"style="width:150px;height:150px;"> 

    </div>

    <div class="topnavbar" id="myTopnav">
    <a href="shop.php">Shop</a>
        <a href="../php/cart.php">Cart</a>
        <a href="profile.php">My Profile</a>
        <a href="../html/login.html" onclick="logout()" class="right">Logout</a>

        </div>
    </div>
    <center><h2>List of Products</h2></center>
    <div class="container-src-pr">
        <form action="../php/shop.php" method="get">
            <div class="row">
                <div class="column">
                    <input type="text" id="fprname" name="prname" placeholder="Product name..">
                </div>
                <div class="column">
                    <select id="idprtype" name="prtype">
                        <option value="all">All</option>
                        <option value="rolex">Rolex</option>
                        <option value="casio">Casio</option>
                        <option value="gshock">Casio G-Shock</option>
                        <option value="omega">Omega</option>
                        <option value="hublot">Hublot</option>
                    </select>
                </div>
                <div class="columnsr">
                    <input type="submit" name="button" value="Search">
                </div>
            </div>
        </form>
    </div>
    <?php
    echo "<div class='container-pr'>";
    echo "<div class='card-row-pr'>";
    foreach ($rows as $products) {
        $prodid = $products['prid'];
        $qty = $products['prqty'];
        echo " <div class='card-pr'>";
        $imgurl = "../images/" . $products['picture'];
        echo "<img src='$imgurl' class='primage-pr'>";
        echo "<h4 align='center' >" . ($products['prname']) . "</h3>";
        echo "<p align='center'> RM " . number_format($products['prprice'], 2) . "<br>";
        echo "Avail:" . ($products['prqty']) . " unit/s</p>";
        echo "<a href='../php/shop.php?op=cart&prodid=$prodid'><i class='fa fa-cart-plus'  onclick='return cartDialog()' style='font-size:24px;color:dodgerblue'></i></a>";
        echo "</div>";
    }
    echo "</div>";
    echo "</div>";
    ?>
    <a href="newproduct.php" class="float">
        <i class="fa fa-plus my-float"></i>
    </a>
</body>

</html>
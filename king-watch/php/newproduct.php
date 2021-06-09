<?php
session_start();

if ($_SESSION["session_id"]) {
    $username = $_SESSION["email"];
    $name = $_SESSION["name"];
} else {
    echo "<script> alert('Session not available. Please login')</script>";
    echo "<script> window.location.replace('../html/login.html')</script>";
}
include_once("dbconnect.php");


if (isset($_POST['button'])) {
    $prname = $_POST['prname'];
    $prtype = $_POST['prtype'];
    $prprice = $_POST['prprice'];
    $prqty = $_POST['prqty'];
    $picture = uniqid() . '.png';

if (file_exists($_FILES["fileToUpload"]["tmp_name"]) || is_uploaded_file($_FILES["fileToUpload"]["tmp_name"])) {
        $sqlinsertprod =  "INSERT INTO tbl_products(prname, prtype, prprice, prqty,picture) VALUES('$prname','$prtype','$prprice','$prqty','$picture')";
        if ($conn->exec($sqlinsertprod)) {
            uploadImage($picture);
            echo "<script>alert('Success')</script>";
            echo "<script>window.location.replace('../php/shop.php')</script>";
        } else {
            echo "<script>alert('Failed')</script>";
            return;
        }
} else {
        echo "<script>alert('Image not available')</script>";
        return;
    }
}

function uploadImage($picture)
{
    $target_dir = "../images/";
    $target_file = $target_dir . $picture;
    move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file);
}

?>

<!DOCTYPE html>
<html>

<head>
    <title>Main Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="../js/validate.js"></script>
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>

<body>
    <div class="header">
        <img src="../images/logo.png"style="width:150px;height:150px;"> 

    </div>
    <div class="topnavbar" id="myTopnav">
        <a href="shop.php">Shop</a>
        <a href="../html/login.html" onclick="logout()" class="right">Logout</a>
        <a href="javascript:void(0);" class="icon" onclick="mytopnavFunction()">
            <i class="fa fa-bars"></i>
        </a>
    </div>

    <div class="main">
            <div class="card-header" type="submit">
                <h3>New Product</h3>
            </div>
            <div> <br>
            
        <div class="container-pr">
        <form action="newproduct.php" method="post" enctype="multipart/form-data">
            <div class="row-pr" align="center">
                <img class="imgselection-pr" src="images.png"><br>
                <input type="file" onchange="previewFile()" name="fileToUpload" id="fileToUpload" accept="image/*"><br>
            </div>
            <div class="row-pr">
                <div class="col-25-pr">
                    <label for="fprname">Product Name</label>
                </div>
                <div class="col-75-pr">
                    <input type="text" id="fprname" name="prname" placeholder="Product name..">
                </div>
            </div>
            <div class="row-pr">
                <div class="col-25-pr">
                    <label for="prtype">Product Brand</label>
                </div>
                <div class="col-75-pr">
                    <select id="idprtype" name="prtype">
                        <option value="rolex">Rolex</option>
                        <option value="casio">Casio</option>
                        <option value="gshock">Casio G-Shock</option>
                        <option value="omega">Omega</option>
                        <option value="hublot">Hublot</option>
                    </select>
                </div>
            </div>
            <div class="row-pr">
                <div class="col-25-pr">
                    <label for="lprice">Price</label>
                </div>
                <div class="col-75-pr">
                    <input type="text" id="idprice" name="prprice" placeholder="Price (RM).." >
                </div>
            </div>
            <div class="row-pr">
                <div class="col-25-pr">
                    <label for="lqty">Quantity</label>
                </div>
                <div class="col-75-pr">
                    <input type="text" id="idqty" name="prqty" placeholder="Quantity..">
                </div>
            </div>
            <div class="row-pr">
                <div class="col-25-pr">
                </div>
                <div class="col-75-pr">
                    <input type="submit" name="button" value="Submit">
                </div>
            </div>
        </form>
    </div>
    </div>
</body>

</html>
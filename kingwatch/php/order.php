<?php

include_once("../php/dbconnect.php");

?>
<!DOCTYPE html>
<html>

<head>
    <title>Order</title>
    <link rel = "icon" href ="images/logo.png"type = "image/x-icon">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


</head>

<body>
    <div class="header">
        <img src="../images/logo.png"style="width:150px;height:150px;"> 
    </div>
    <div class="topnavbar" id="myTopnav">
        <a href="myshop.php">My Shop</a>
        <a href="order.php">Order</a>
    </div>
    <div class="main">
    <center><h2>List of Order</h2></center>
        <div class="row-single">
            <div class="card-header" type="submit">
                
            </div>
        </div>
    
    <div>
        <br><br>
    <?php
echo "<table style='border: solid 1px black;
    margin-left: auto;
    margin-right: auto;'>";
 echo "<tr><th>Email</th><th>Product ID</th><th>Quantity</th><th>Product Name/Model</th><th>Brand</th><th>Price (RM)</th></th><th>Available Stock</th><th>Purchase Date</th><th>Product Image</th></tr>";

class TableRows extends RecursiveIteratorIterator {
    function __construct($it) {
        parent::__construct($it, self::LEAVES_ONLY);
    }

    function current() {
        return "<td style='width: 150px; border: 1px solid black;'>" . parent::current(). "</td>";
    }

    function beginChildren() {
        echo "<tr>";
    }

    function endChildren() {
        echo "</tr>" . "\n";
    }
}

try {
    $stmt = $conn->prepare("SELECT * FROM tbl_usritem INNER JOIN tbl_products ON tbl_usritem.prid = tbl_products.prid ");
    $stmt->execute();

    // set the resulting array to associative
    $result = $stmt->setFetchMode(PDO::FETCH_ASSOC);

    foreach(new TableRows(new RecursiveArrayIterator($stmt->fetchAll())) as $k=>$v) {
        echo $v;
    }
}
catch(PDOException $e) {
    echo "Error: " . $e->getMessage();
}
$conn = null;
echo "</table>";
?>
<div>

</div>

    </div>

</body>

</html>
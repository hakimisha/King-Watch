<?php
session_start();
include_once("dbconnect.php");
if (!isset($_COOKIE['email'])) {
    echo "<script>loadCookies()</script>";
    echo "<script> window.location.replace('../index.php')</script>";
} else {
     $name = $_SESSION["name"];
     $email = $_SESSION["email"];
    if (isset($_GET['button'])) {
        $op = $_GET["button"];
        if ($op == "delete") {
            $prid = $_GET['prid'];
            $sqldelete = "DELETE FROM tbl_carts WHERE email='$email' AND prid = '$prid'";
            $stmt = $conn->prepare($sqldelete);
            if ($stmt->execute()) {
                echo "<script> alert('Delete Success')</script>";
                echo "<script>window.location.replace('cart.php')</script>";
            } else {
                echo "<script> alert('Delete Failed')</script>";
            }
        }
        if ($op == "addcart") {
            $prid = $_GET['prid'];
            $sqlupdatecart = "UPDATE tbl_carts SET qty = qty +1 WHERE prid = '$prid' AND email = '$email'";
            if ($conn->exec($sqlupdatecart)) {
                echo "<script>alert('Success')</script>";
                echo "<script> window.location.replace('cart.php')</script>";
            } else {
                echo "<script>alert('Failed add')</script>";
                echo "<script> window.location.replace('cart.php')</script>";
            }
        }
        if ($op == "removecart") {
            $prid = $_GET['prid'];
            $qty = $_GET['qty'];
            if ($qty == 1) {
                echo "<script>alert('Failed.')</script>";
                echo "<script> window.location.replace('cart.php')</script>";
            } else {
                $sqlupdatecart = "UPDATE tbl_carts SET qty = qty - 1 WHERE prid = '$prid' AND email = '$email'";
                if ($conn->exec($sqlupdatecart)) {
                    echo "<script>alert('Success')</script>";
                    echo "<script> window.location.replace('cart.php')</script>";
                } else {
                    echo "<script>alert('Failed')</script>";
                    echo "<script> window.location.replace('cart.php')</script>";
                }
            }
        }
        if ($op == "Pay") {
            $name = $_GET["name"];
            $mobile = $_GET["phone"];
            $pickup = $_GET['pickup'];
            $amount = $_GET['price'];

            $api_key = '18585f9e-99b0-44bb-b110-128fdbf03abd';
            $collection_id = '26lq11hf';
            $host = 'https://billplz-staging.herokuapp.com/api/v3/bills';

            $data = array(
                'collection_id' => $collection_id,
                'email' => $email,
                'mobile' => $mobile,
                'name' => $name,
                'amount' => $amount * 100, // RM20
                'description' => 'Payment for order',
                'callback_url' => "http://hakimisha.epizy.com/kingwatch/php/shop.php",
                'redirect_url' => "http://hakimisha.epizy.com/kingwatch/php/payment_update.php?userid=$email&mobile=$mobile&amount=$amount"
            );
            $process = curl_init($host);
            curl_setopt($process, CURLOPT_HEADER, 0);
            curl_setopt($process, CURLOPT_USERPWD, $api_key . ":");
            curl_setopt($process, CURLOPT_TIMEOUT, 30);
            curl_setopt($process, CURLOPT_RETURNTRANSFER, 1);
            curl_setopt($process, CURLOPT_SSL_VERIFYHOST, 0);
            curl_setopt($process, CURLOPT_SSL_VERIFYPEER, 0);
            curl_setopt($process, CURLOPT_POSTFIELDS, http_build_query($data));

            $return = curl_exec($process);
            curl_close($process);

            $bill = json_decode($return, true);

            //echo "<pre>".print_r($bill, true)."</pre>";
            header("Location: {$bill['url']}");

        }
    }
    $sqlloadcart = "SELECT * FROM tbl_carts INNER JOIN tbl_products ON tbl_carts.prid = tbl_products.prid WHERE tbl_carts.email = '$email'";
    $stmt = $conn->prepare($sqlloadcart);
    $stmt->execute();
    $result = $stmt->setFetchMode(PDO::FETCH_ASSOC);
    $rows = $stmt->fetchAll();
}
?>
<!DOCTYPE html>
<html>

<head>
    <title>My Cart</title>
    <link rel = "icon" href ="images/logo.png"type = "image/x-icon">
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
        <a href="profile.php">My Profile</a>
        <a href="../php/cart.php">Cart</a>
        <a href="../html/login.html" onclick="logout()" class="right">Logout</a>

        </div>
    </div>
        </div>
    </div>
    <center>
        <h2>Your Cart</h2>
    </center>
    <?php
    $sumtotal = 0.0;
    echo "<div class='container-pr'>";
    echo "<div class='card-row-pr'>";
    foreach ($rows as $carts) {
        $prid = $carts['prid'];
        $qty = $carts['qty'];
        $total = 0.0;
        $total = $carts['prprice'] * $carts['qty'];
        $imgurl = "../images/" . $carts['picture'];
        echo " <div class='card'>";
        echo "<p align='right'><a href='cart.php?button=delete&prid=$prid' class='fa fa-remove' onclick='return deleteDialog()' style='text-decoration:none;color:red'></a></p>";
        echo "<img src='$imgurl' class='primage'>";
        echo "<h4 align='center' >" . ($carts['prname']) . "</h3>";
        echo "<p align='center'> RM " . number_format($carts['prprice'], 2) . "/unit<br>";
        echo "<table class='center'><tr><td><a href='cart.php?button=removecart&prid=$prid&qty=$qty'><i class='fa fa-minus' ' style='font-size:24px;color:dodgerblue'></i></a></td>";
        echo "<td>Qty " . $qty . "</td>";
        echo "<td>&nbsp<a href='cart.php?button=addcart&prid=$prid&qty=$qty'><i class='fa fa-plus' ' style='font-size:24px;color:dodgerblue'></i></a></td></tr></table>";
        echo "Total RM " . number_format($total, 2) . "<br>";
        echo "</div>";
        $sumtotal = $total + $sumtotal;
    }
    echo "</div>";
    echo "</div>";
    echo "<div class='container-src-pr'>
    <h3>Total Price: RM " . number_format($sumtotal, 2) . "</h3></div>";
    ?>
    <div class="container">
        <h3>Payment Form</h3>
        <form action="cart.php" method="get">
            <div class="row">
                <div class="col-25">
                    <label for="lblemail">Your Email</label>
                </div>
                <div class="col-75">
                    <input type="text" id="idemail" name="email" placeholder="Your email.." value="<?php echo $email; ?>" required>
                </div>
            </div>
            <div class="row">
                <div class="col-25">
                    <label for="lblname">Your Name</label>
                </div>
                <div class="col-75">
                    <input type="text" id="idname" name="name" placeholder="Your name.." value="<?php echo $name; ?>" required>
                </div>
            </div>

            <div class="row">
                <div class="col-25">
                    <label for="lphone">Phone Number</label>
                </div>
                <div class="col-75">
                    <input type="text" id="idphone" name="phone" placeholder="Your phone" required>
                </div>
            </div>
            <input type="hidden" id="idprice" name="price" value="<?php echo $sumtotal ?>">
            <div class="row">
                <div class="col-25">
                </div>
                <center><div class="col-75"></center>
                    <input type="submit" name="button" value="Pay">
                </div>
            </div>
        </form>
    </div>
</body>

</html>
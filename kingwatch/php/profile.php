<?php
session_start();
include_once("dbconnect.php");

if ($_SESSION["session_id"]) {
    $username = $_SESSION["email"];
    $name = $_SESSION["name"];
    if (isset($_POST['submit'])) {
        $nname = $_POST["name"];
        $nphone = $_POST["phone"];
        $current = sha1($_POST["oldpassword"]);
        $pass = $_SESSION["password"];
        if ($current == $pass) {
            if (isset($_POST["newpassworda"]) || isset($_POST["newpasswordb"])) {
                $npassa = $_POST["newpassworda"];
                $npassb = $_POST["newpasswordb"];
                if (!(empty($npassa) || empty($npassb))) {
                    if ($npassa == $npassb) {
                        $newpass = sha1($npassa);
                        $sqlupdate = "UPDATE tbl_user SET phone='$nphone',name='$nname',password= '$newpass' WHERE email = '$username'";
                    }
                } else {
                    $sqlupdate = "UPDATE tbl_user SET phone='$nphone',name='$nname' WHERE email = '$username'";
                }
        
            }

            $conn->exec($sqlupdate);
            echo "<script>alert('Update successful')</script>";
            echo "<script>window.location.replace('../php/login.php')</script>";
        } else {
            echo "<script> alert('Current password do not match')</script>";
        }
    }
} else {
    echo "<script> alert('Session not available. Please login')</script>";
    echo "<script> window.location.replace('../php/login.php')</script>";
}
?>

<!DOCTYPE html>
<html>

<head>
    <title>My Profile</title>
    <link rel = "icon" href ="../images/logo.png"type = "image/x-icon">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="../js/validate.js"></script>
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>

<body>
    <div class="header">
    <img src="../images/logo.png" style="width:150px;height:150px;">

    </div>
    <div class="topnavbar" id="myTopnav">
        <a href="shop.php">Shop</a>
        <a href="profile.php">My Profile</a>
        <a href="cart.php">Cart</a>
        <a href="../php/login.php" onclick="logout()" class="right">Logout</a>
        <a href="javascript:void(0);" class="icon" onclick="mytopnavFunction()">
            <i class="fa fa-bars"></i>
        </a>
    </div>

    <div class="main">
    <center><img src="../images/logo-nt.png" style="width:150px;height:150px;"></center>
    <center><h2>Update Your Profile</h2></center> <br>
        <center>
            <div class="container">

                <form name="updateprofileForm" action="profile.php" onsubmit="return validateUpdForm()" method="post" enctype="multipart/form-data">
                    <div class="row">
                        <div class="col-25">
                            <label for="fname">Name</label>
                        </div>
                        <div class="col-75">
                            <input type="text" id="idname" name="name" placeholder="Your name.." value="<?php echo $name; ?>" required>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-25">
                            <label for="lname">Email</label>
                        </div>
                        <div class="col-75">
                            <input type="text" id="idemail" name="email" placeholder="Your email.." value="<?php echo $username; ?>" disabled>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-25">
                            <label for="lphone">Phone</label>
                        </div>
                        <div class="col-75">
                            <input type="tel" id="idphone" name="phone" placeholder="Your phone number.." required>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-25">
                            <label for="lpassword">Current Password</label>
                        </div>
                        <div class="col-75">
                            <input type="password" id="idpassa" name="oldpassword" placeholder="Current password.." required>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-25">
                            <label for="lpassword">New Password</label>
                        </div>
                        <div class="col-75">
                            <input type="password" id="idpassb" name="newpassworda" placeholder="Enter new password to update">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-25">
                            <label for="lpassword">New Password</label>
                        </div>
                        <div class="col-75">
                            <input type="password" id="idpassc" name="newpasswordb" placeholder="Re-enter new password to update">
                        </div>
                    </div>
                    <center><div class="row"></center>
                        <input type="submit" name="submit" value="Submit">
                    </div>
            </div>

            </form>
        </center>
    </div>
    </div>
</body>

</html>
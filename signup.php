<?php
session_start();

include("database/connection.php");
include("database/functions.php");



if ($_SERVER['REQUEST_METHOD'] == "POST") {
    //something was posted
    $user_name = $_POST['user_name'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $number = $_POST['number'];
    $nid = $_POST['nid'];
    $address = $_POST['address'];
    


    if (!empty($user_name) && !empty($password) && !is_numeric($user_name)  ) {

       if (filter_var($email, FILTER_VALIDATE_EMAIL)) {
         //save to database
         $user_id = random_num(5);
         $v_code=bin2hex(random_bytes(4));
 
         $query = "INSERT INTO `users`(`user_id`, `user_name`, `email`, `password`, `number`, `nid`, `address`, `verification_code`, `is_verify`) values ('$user_id','$user_name','$email','$password','$number','$nid','$address','$v_code','0')";
 
         mysqli_query($con, $query);
             header("Location: login.php");
             die;
        
       } else {
        echo "Please enter valid Email!";
           }
       
       
        
    } else {
        echo "Please enter some valid information!";
    }
}
?>


<!DOCTYPE html>
<html>

<head>
    <link rel="shortcut icon"
        href="https://p7.hiclipart.com/preview/583/301/232/flight-travel-agent-computer-icons-free-high-quality-travel-icon.jpg"
        type="image/x-icon">
    <title>Travel Guider</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
        integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <!-- Owl-carousel CDN -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css"
        integrity="sha256-UhQQ4fxEeABh4JrcmAJ1+16id/1dnlOEVCFOxDef9Lw=" crossorigin="anonymous" />
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css"
        integrity="sha256-kksNxjDRxd/5+jGurZUJd1sdR2v+ClrCl3svESBaJqw=" crossorigin="anonymous" />

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css"
        integrity="sha256-h20CPZ0QyXlBuAw7A+KluUYx/3pK+c7lYEpqLTlxjYQ=" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">

    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="style1.css">
    <style>
        body {
    min-height: 100vh;
    background: url(https://live.staticflickr.com/2738/4195504888_edb9cc9fb6_b.jpg) ;
    background-size: cover;
    background-position: center;
}
    </style>

</head>

<body>
    <header id="header">
    <div class="strip d-flex justify-content-between px-4 py-1 bg-light">
            <p class="font-rale font-size-12 text-black-50 m-0">
                <marquee behavior="" direction="" style="color: Green;">Welcome to Travel Guider'</marquee>
            </p>
            <div class="font-rale font-size-14">
               
            </div>
        </div>

        <nav class="navbar navbar-expand-lg navbar-dark color-second-bg">
            <a class="navbar-brand" href="index.php">Travel Guider</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav m-auto font-rubik">
                    <li class="nav-item active">
                        <a class="nav-link" href=""><i class="fa-solid fa-location-dot"></i> Tour Places</a></a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="#"><i class="fa-solid fa-van-shuttle"></i>Transportation</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="#"><i class="fa-solid fa-blog"></i> Blog & Reviews</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="#"><i class="fa-solid fa-house-medical-flag"></i> Medical</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="#"><i class="fa-solid fa-hotel"></i> Residence</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="login.php"><i class="fa-solid fa-user-plus"></i> </a>
                    </li>

                </ul>
                <!-- <form action="#" class="font-size-14 font-rale">
                    <a href="cart.php" class="py-2 rounded-pill color-primary-bg">
                        <span class="font-size-16 px-2 text-white">
                            <script src="https://cdn.lordicon.com/fudrjiwc.js"></script>
                            <lord-icon src="https://cdn.lordicon.com/ggihhudh.json" trigger="hover" style="width:40px;height:40px">
                            </lord-icon></i>
                        </span>
                        <span class="px-3 py-2 rounded-pill text-dark bg-light"></span>
                    </a>
                </form> -->
            </div>
        </nav>
        <!-- !Primary Navigation -->

    </header>




    <div id="box">

        <form method="post">
            <div style="font-size: 30px;margin: 10px;color: white;">Signup</div>

            <input id="text" type="text" name="user_name" placeholder="User name" required><br><br>
            <input id="text" type="email" name="email" placeholder="Email" required><br><br>
            <input id="text" type="password" name="password" placeholder="Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"required><br><br>
            <input id="text" type="text" name="number" placeholder="Phone number" pattern="[01][0-9].{9}" title="Start with 01" required><br><br>
            <input id="text" type="nid" name="nid" placeholder="NID number" minlength="11" maxlength="19" required><br><br>
            <input id="text" type="address" name="address" placeholder="Address"><br><br>

            <div class="btn">
                <a href="login.php">
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                    <input type="submit" value="Signup">
                </a>
            </div>
            <br>


          <div style="font-size: 15px;color: white;text-align: center;">Have an account? </div>

            <div class="btn">

                <a href="login.php">
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                    <input type="button" value="LogIn">
                </a>
            </div><br><br>
        </form>
    </div>
</body>

</html>
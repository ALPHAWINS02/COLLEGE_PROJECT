<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Profile</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <link rel="stylesheet" href="./STYLES.css">

</head>
<body>

<main id="main-area">
<!--header-end-->

<?php

session_start();
include ('helper.php');

$user = array();


if(isset($_SESSION['userID'])){
    require ('mysqli_connect.php');
    $user = get_user_info($con, $_SESSION['userID']);
}

?>
<?php
    if(isset($_POST["submit2"]))
    {
        header('Location:start.php');
    }
?>
<?php
    if(isset($_POST["submit3"]))
    {
        header('Location:view.php');
    }
?>
<?php
    if(isset($_POST["submit4"]))
    {
        header('Location:topic.php');
    }
?>

<section id="main-site">
    
    <div class="container py-5">
        <div class="row">
            <div class="col-4  offset-4 shadow py-5">
            
                <div class="upload-profile-image d-flex justify-content-center pb-2">
                    <div class="text-center">
                        <img class="img rounded-circle" style="width: 100px; height: 100px;" src="<?php echo isset($user['profileImage']) ? $user['profileImage'] : './assets/profile/beard.png'; ?>" alt="">
                        
                        <h4 class="py-3">
                            <?php
                            if(isset($user['firstName'])){
                                printf('%s %s', $user['firstName'], $user['lastName'] );
                            }
                            ?>
                        </h4>
                    </div>
                </div>

                <div class="user-info px-3">
                    <ul class="font-ubuntu navbar-nav">
                        <li class="nav-link"><b>First Name: </b><span><?php echo isset($user['firstName']) ? $user['firstName'] : ''; ?></span></li>
                        <li class="nav-link"><b>Last Name: </b><span><?php echo isset($user['lastName']) ? $user['lastName'] : ''; ?></span></li>
                        <li class="nav-link"><b>Email: </b><span><?php echo isset($user['email']) ? $user['email'] : ''; ?></span></li>
                    </ul>
                     
                </div>
                <br>
                
                <form name="form1" action="" method="post">
                    <input type="submit" name="submit2" value="start-blogs" class="img rounded-circle" >
                </form>
                <form name="form1" action="" class="offset-4"method="post">
                    <input type="submit" name="submit3" value="view-blogs" class="img rounded-circle">
                </form>
                <form name="form1" action="" class="offset-8" method="post">
                    <input type="submit" name="submit4" value="blog topics"  class="img rounded-circle">
                </form>
            </div>
           
                        
        </div>
    </div>
    <br>
            <br>
                        <br>
                        <br>
                        <br>
                        <br><br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
</section>

<?php
include "footer.php";
?>

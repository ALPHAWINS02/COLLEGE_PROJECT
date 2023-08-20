<?php

    include "sql.php";

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=<device-width>, initial-scale=1.0">
    <title>VIEWER</title>
    <link rel="stylesheet" href="./STYLES.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
</head>
<body1>

    <div class="hero   shadow py-1">
        <section id="nav">
            <img src="../main/assets/B.png" class="logo">
            <ul>
                <li><a href="start.php"><b>Blogs</b></a></li>
                <li><a href="topic.php"><b>Topics</b></a></li>
                <li><a href="index.php"><b>Account</b></a></li>
            </ul>


        </section>
    </div>
    <div class="row">
            <?php foreach($query as $q){ ?>
                <div class="col-12 col-lg-4 d-flex justify-content-center">
                    <div class="card text-white bg-dark mt-5" style="width: 18rem;">
                        <div class="card-body">
                            <h5 class="card-title"><?php echo $q['title'];?></h5>
                            <h6 class="card-title"><?php echo $q['category'];?></h6>
                            <p class="card-text"><?php echo substr($q['Description'], 0, 50);?>...</p>
                            
                            
                            <a href="view1.php?id=<?php echo $q['id']?>" class="btn btn-light">Read More <span class="text-danger">&rarr;</span></a>
                        </div>
                    </div>
                </div>
            <?php }?>
        </div>
        


<!-- Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>




</body1>
</html>
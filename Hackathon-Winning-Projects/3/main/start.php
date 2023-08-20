
<?php

include "sql.php";

?>



<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=<device-width>, initial-scale=1.0">
    <title>WRITER</title>
    <link rel="stylesheet" href="./STYLES.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>

<body>

    <div class="hero   shadow py-1">
        <section id="nav">
            <img src="../main/assets/text-1630744036883.png" class="logo">
            <ul>
                <li><a href="../main/private.html"><b>Private</b></a></li>
                <li><a href="view.php"><b>View</b></a></li>
                <li><a href="topic.php"><b>Topics</b></a></li>
                <li><a href="index.php"><b>Account</b></a></li>
            </ul>


        </section>
    </div>
    <h2><b>YOUR BLOG</b></h2>
    <section id="YASH">
        <form method="GET">
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="title" class="col-1g-3 col-form-label">BLOG</label>
                        <div class="col-1g-9">
                            <input type="text" name="title" class="form-control" placeholder="Title">
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="description" class="col-1g-3 col-form-label">Description</label>
                        <div class="col-1g-9">
                            <textarea a class="form-control" rows="5" cols="10" name="Description" placeholder="Description"></textarea>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="category" class="col-1g-3 col-form-label">CATEGORY</label>
                        <div class="col-1g-9">
                            <select name="category" class="form-control">
                                <option>Select</option>
                                <option value="ENTERTAINMENT">ENTERTAINMENT</option>
                                <option value="TECH,SCI-FICTION">TECH,SCI-FICTION </SCI-FICTION>
                                </option>
                                <option value="SPORTS">SPORTS</option>
                                <option value="POLITICS">POLITICS</option>
                                <option value="OTHERS">OTHERS</option>


                            </select>

                        </div>
                    </div>
                </div>
            </div>
            
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <div class="col-1g-10">
                            <input type="submit" name="newpost" value="Add Post" class="btn btn-primary">
                            <button type="reset" class="btn btn-default">Discard</button>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </section>









</body>

</html>
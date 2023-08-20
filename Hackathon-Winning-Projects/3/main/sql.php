<?php

 // Don't display server errors 
ini_set("display_errors", "off");

// Initialize a database connection
$conn = mysqli_connect("localhost", "root", "admin", "register_db");

// Destroy if not possible to create a connection
if(!$conn){
    echo "<h3 class='container bg-dark p-3 text-center text-warning rounded-lg mt-5'>Not able to establish Database Connection<h3>";
}

// Get data to display on index page
$sql = "SELECT * FROM post";
$query = mysqli_query($conn, $sql);

// Create a new post
if(isset($_REQUEST['newpost'])){
    $title = $_REQUEST['title'];
    $Description = $_REQUEST['Description'];
    $category = $_REQUEST['category'];
    $feat_image = $_REQUEST['feat_image'];

    $sql = "INSERT INTO post(title, Description,category,feat_image ) VALUES('$title', '$Description', '$category','$feat_image')";
        mysqli_query($conn, $sql);
        
        echo $sql;

        header("Location: view.php?info=added");
        exit();
    }
// Get post data based on id
if(isset($_REQUEST['id'])){
    $id = $_REQUEST['id'];
    $sql = "SELECT * FROM post WHERE id = $id";
    $query = mysqli_query($conn, $sql);
}

// Delete a post
if(isset($_REQUEST['delete'])){
    $id = $_REQUEST['id'];

    $sql = "DELETE FROM post WHERE id = $id";
    mysqli_query($conn, $sql);

    header("Location: view.php");
    exit();
}

// Update a post
if(isset($_REQUEST['update'])){
    $id = $_REQUEST['id'];
    $title = $_REQUEST['title'];
    $Description = $_REQUEST['Description'];
    $category = $_REQUEST['category'];
    $feat_image = $_REQUEST['feat_image'];

    $sql = "UPDATE post SET title = '$title', Description = '$Description',category= '$category', feat_image ='$feat_image' WHERE id = $id";
    mysqli_query($conn, $sql);

    header("Location: view.php");
    exit();
}


?>
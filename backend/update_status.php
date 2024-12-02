<?php
session_start();

if (!isset($_SESSION['user_id'])){
  header("location:../sign_up_sign_in/login.php?error=2");
}
include("../inc/connection.php");

$id=$_GET['id'];

if (isset($_POST['update_status'])){

    $new_status = $con->real_escape_string($_POST['status']);

    $sql="UPDATE properties SET status = '$new_status' WHERE property_id = $id";
    mysqli_query($con,$sql);
    header("Location: property_details.php?id=$id");
}


?>

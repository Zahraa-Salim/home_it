<?php
session_start();

if (!isset($_SESSION['user_id'])){
  header("location:../sign_up_sign_in/login.php?error=2");
}
include("../inc/connection.php");

$id=$_SESSION['user_id'];

if (isset($_POST['delete_photo'])){

    $sql="UPDATE users SET profile_photo = NULL WHERE user_id = $id";
    mysqli_query($con,$sql);
}


if (isset($_POST['edit_info'])){

    
    $name = $con->real_escape_string($_POST['name']);
    $phone = $con->real_escape_string($_POST['phone']);

    $sql = "UPDATE users SET name = '$name', phone = '$phone' WHERE user_id = $id";

    mysqli_query($con,$sql);

    // File upload directories
    $mainImageDir = 'uploads/profile_photo/';

    if (!is_dir($mainImageDir)) mkdir($mainImageDir, 0777, true);


    // Handle main image upload
    if (!empty($_FILES['profile_photo']['tmp_name'])) {
        $mainImageTmpPath = $_FILES['profile_photo']['tmp_name'];
        $mainImageName = uniqid('profile_') . '.' . pathinfo($_FILES['profile_photo']['name'], PATHINFO_EXTENSION);
        $mainImagePath = $mainImageDir . $mainImageName;

        move_uploaded_file($mainImageTmpPath, $mainImagePath);
        // Optionally save the main image path into the `properties` table
        $sql = "UPDATE users SET profile_photo = '$mainImagePath' WHERE user_id = $id";
        mysqli_query($con,$sql) or die(mysqli_error($con));
    }
}

header("Location:editAccount.php");

?>
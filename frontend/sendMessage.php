<?php

require_once '../inc/connection.php';
    $artID=$_GET['id'];
    if (isset($_POST['submit'])) {
        $name = mysqli_real_escape_string($con, $_POST['name']);
        $email = mysqli_real_escape_string($con, $_POST['email']);
        $phone = mysqli_real_escape_string($con, $_POST['phone']);
        $message = mysqli_real_escape_string($con, $_POST['message']);

        $sql="SELECT * FROM properties WHERE property_id='$artID'";
        $result=mysqli_query($con,$sql);
        $row = mysqli_fetch_assoc($result);
        $user_id=$row["user_id"];
        $property_id=$row["property_id"];
        $new_sql="INSERT INTO messages(user_id,property_id,client_name, client_email, client_phone, client_message) VALUES ('$user_id','$property_id','$name','$email','$phone','$message')";
        mysqli_query($con,$new_sql) or die(mysqli_error($con)); 
    }
    header("location:property_details.php?id=$artID");
?> 
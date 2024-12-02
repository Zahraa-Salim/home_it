<?php

 include("../inc/connection.php");

 $name = mysqli_real_escape_string($con, $_POST['txtName']);
 $email = mysqli_real_escape_string($con, $_POST['txtEmail']);
 $subject = mysqli_real_escape_string($con, $_POST['txtSubject']);
 $message = mysqli_real_escape_string($con, $_POST['txtMessage']);

 $sql="INSERT INTO client_reviews(name, email, subject, message) VALUES ('$name','$email','$subject','$message')";
 mysqli_query($con,$sql) or die(mysqli_error($con));
 header("Location:contact.php");

?>   
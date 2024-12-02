<?php

include '../inc/connection.php';

session_start();

if (isset($_POST['submit'])) {

   $email = mysqli_real_escape_string($con, $_POST['email']);
   $pass = $_POST['password'];

   $select = "SELECT * FROM users WHERE email = '$email' AND password = '$pass'";

   $result = mysqli_query($con, $select);

   if (mysqli_num_rows($result) > 0) {

      $row = mysqli_fetch_array($result);

      $_SESSION['user_id'] = $row['user_id'];
      header('location:../backend/backend_index.php');

   }else {
      $error = urlencode('Incorrect email or password!'); 
      header("location:login.php?error=$error");
   }
   
}
?>
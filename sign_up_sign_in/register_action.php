<?php

include '../inc/connection.php';

if(isset($_POST['submit'])){

   $name = mysqli_real_escape_string($con, $_POST['name']);
   $email = mysqli_real_escape_string($con, $_POST['email']);
   $phone = mysqli_real_escape_string($con, $_POST['phone']);
   $pass = ($_POST['password']);
   $cpass = ($_POST['cpassword']);

   $select = " SELECT * FROM users WHERE email = '$email' AND password = '$pass' ";

   $result = mysqli_query($con, $select);

   if(mysqli_num_rows($result) > 0){

      $error = urlencode('user already exist!'); 
      header("location:register.php?error=$error");

   }else{

      if($pass != $cpass){
        $error = urlencode('password not matched!'); 
        header("location:register.php?error=$error");
      }
      else{
         $insert = "INSERT INTO users(name, email, password, phone) VALUES('$name','$email','$pass','$phone')";
         mysqli_query($con, $insert);
         header('location:login.php');
      }
   }

};


?>
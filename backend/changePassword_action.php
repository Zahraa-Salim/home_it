<?php
session_start();

if (!isset($_SESSION['user_id'])){
  header("location:../sign_up_sign_in/login.php?error=2");
}
include("../inc/connection.php");

$id=$_SESSION['user_id'];
            
if (isset($_POST['changePassword'])){

    $current_password=$_POST['current_password'];
    $sql="SELECT * FROM users WHERE user_id='$id' AND password='$current_password'";
    $result=mysqli_query($con,$sql);

    if (mysqli_num_rows($result) > 0) {

        $row = mysqli_fetch_array($result);
        $new_password=$_POST['new_password'];
        $c_new_password=$_POST['confirm_new_password'];

        if($new_password != $c_new_password){
            $error = 'password not matched!';
            $error_encoded = urlencode($error); 
            header("Location:changePassword.php?error=$error_encoded");
         }else{
            $update = "UPDATE users SET password = '$new_password' WHERE user_id = $id";
            mysqli_query($con, $update);
            header("Location:../sign_up_sign_in/login.php");
         }
  
     }else {
        $error= 'Incorrect current password!';
        $error_encoded = urlencode($error); 
        header("Location:changePassword.php?error=$error_encoded");
     }
}


?>
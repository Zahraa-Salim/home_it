<?php
    
  session_start();

  if (!isset($_SESSION['user_id'])){
    header("location:../sign_up_sign_in/login.php?error=2");
  }
  if (isset($_GET['error'])) {
    $error = urldecode($_GET['error']);
  }

?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>HomeIt - Your Trusted Partner in Finding the Perfect Home</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="..\img\icon.png" rel="icon">
    
    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="../css/style2.css" rel="stylesheet">

</head>
<body>

    <div class="form-container">
        <h3>Change Password</h3>
        <?php
        if(isset($error)){
                echo '<span class="error-msg">'.$error.'</span>';
        };
        ?><br>
        <form action="changePassword_action.php" method="POST">
            <!-- Current Password -->
            <input type="password" name="current_password" placeholder="Enter Current Password" required>
            
            <!-- New Password -->
            <input type="password" name="new_password" placeholder="Enter New Password" required>
            
            <!-- Confirm New Password -->
            <input type="password" name="confirm_new_password" placeholder="Confirm New Password" required>
            
            <!-- Submit Button -->
            <input type="submit" value="Change Password" name="changePassword">
        </form>
        <p><a href="editAccount.php">Back to Profile</a></p>
    </div>




</body>

</html>
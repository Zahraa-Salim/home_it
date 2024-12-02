<?php
   if (isset($_GET['error'])) {
      $error = urldecode($_GET['error']);
   }
?>


<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>HomeIt - Your Trusted Partner in Finding the Perfect Home</title>

   <!-- Favicon -->
   <link href="img\icon.png" rel="icon">

   <!-- Customized Bootstrap Stylesheet -->
   <link href="../css/bootstrap.min.css" rel="stylesheet">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="../css/style2.css">

</head>
<body>
   
<div class="form-container">

   <form action="login_action.php" method="post">
      <h3>Login</h3>
      <?php
      if(isset($error)){
         echo '<span class="error-msg">'.$error.'</span>';
      };
      ?><br>
      <input type="email" name="email" required placeholder="enter your email"><br>
      <input type="password" name="password" required placeholder="enter your password"><br>
      <input type="submit" name="submit" value="login" class="form-btn"><br>
      <p>don't have an account? <a href="register.php">register</a></p>
   </form>

</div>

</body>
</html>
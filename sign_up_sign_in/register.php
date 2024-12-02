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

   <!-- custom css file link  -->
   <link rel="stylesheet" href="../css/style2.css">

   <!-- Favicon -->
   <link href="img\icon.png" rel="icon">
   <!-- Customized Bootstrap Stylesheet -->
   <link href="../css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
   
<div class="form-container">

   <form action="register_action.php" method="post">
      <h3>Register now</h3>
      <?php
      if(isset($error)){
         echo '<span class="error-msg">'.$error.'</span>';
      };
      ?><br><br>
      <input type="text" name="name" required placeholder="enter your name"><br><br>
      <input type="email" name="email" required placeholder="enter your email"><br><br>
      <input type="phone" name="phone" required placeholder="enter your phone number"><br><br>
      <input type="password" name="password" required placeholder="enter your password"><br><br>
      <input type="password" name="cpassword" required placeholder="confirm your password"><br><br>
      
      <input type="submit" name="submit" value="register" class="form-btn"><br><br>
      <p>already have an account? <a href="login.php">login</a></p>
   </form>

</div>

</body>
</html>
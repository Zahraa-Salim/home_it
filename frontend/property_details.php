<?php

    include '../inc/connection.php';
    
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HomeIt - Your Trusted Partner in Finding the Perfect Home</title>

   <!-- Google Web Fonts -->
   <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Inter:wght@700;800&display=swap" rel="stylesheet">
    
    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Favicon -->
    <link href="..\img\icon.png" rel="icon">    
    
    <!-- Customized Bootstrap Stylesheet -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">
   
   <link href="../css/style3.css" rel="stylesheet">
   <link href="../css/style.css" rel="stylesheet">
    
</head>

<body>
    
    <div class="container-xxl bg-white p-0">

        <!-- Navbar Start -->
        <div class="container-fluid nav-bar bg-transparent">
            <nav class="navbar navbar-expand-lg bg-white navbar-light py-0 px-4">
                <a href="index.php" class="navbar-brand d-flex align-items-center text-center">
                    <div class="icon p-2 me-2">
                        <img class="img-fluid" src="../img/icon.png" alt="Icon" style="width: 30px; height: 30px;">
                    </div>
                    <h1 class="m-0 text-primary">HomeIt</h1>
                </a>
                <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <div class="navbar-nav ms-auto">
                        <a href="index.php" class="nav-item nav-link">Home</a>
                        <a href="about.html" class="nav-item nav-link">About</a>
                        
                            <a href="property-list.php" class="nav-item nav-link active">Property List</a>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
                            <div class="dropdown-menu rounded-0 m-0">
                                
                                <a href="../sign_up_sign_in/register.php" class="dropdown-item">SignUp</a>
                                
                                <a href="../sign_up_sign_in/login.php" class="dropdown-item">Login</a>
                                <a href="testimonial.php" class="dropdown-item">Testimonial</a>
                            </div>
                        </div>
                        <a href="contact.php" class="nav-item nav-link">Contact</a>
                    </div>
                    <a href="../sign_up_sign_in/login.php" class="btn btn-primary px-3 d-none d-lg-flex">Login</a>
                </div>
            </nav>
        </div>
        <!-- Navbar End -->
        
        <!-- -------------------------PHP code--------------------------------- -->
        <?php
            
            $artID=$_GET['id'];

            $sql="SELECT * FROM properties WHERE property_id='$artID'";
            

            $result=mysqli_query($con,$sql);
            $row = mysqli_fetch_assoc($result);

            $sqll="SELECT * FROM images WHERE property_id='$artID'";

            $resultt=mysqli_query($con,$sqll);

        ?>
        <!-- -------------------------PHP code--------------------------------- -->

        <!-- property detail start !-->
        <div class="container">
            <!-- Featured Image -->
            <div class="featured-image">
                <img src="<?=$row['main_image'] ?: '../img/z-image1.webp'?>" alt="Featured Villa">
            </div>

            <header class="title">
                <h1><?= $row["title"]; ?></h1>
                <div class="tags">
                <?php 
                    $type_query = $con->query("SELECT type FROM property_types WHERE type_id = " . $row['type_id']);
                    $property_type = mysqli_fetch_assoc($type_query)['type'];
                 ?>
                    <span class="tag featured"><?= $property_type ?></span>
                    <span class="tag for-sale"><?= $row["purpose"]; ?></span>
                </div>
                <div class="price">$<?= $row["price"]; ?></div>
            </header>
            
            <div class="content">
                <section class="description">
                    <h2>Description</h2>
                    <p><?= $row["description"]; ?></p>
                </section>
                
                <section class="address">
                    <h2>More Information</h2>
                    <table>
                        <tr>
                            <th>Address</th>
                            <td><?= $row["address"]; ?></td>
                        </tr>
                        <tr>

                        <?php 
                            $city_query = $con->query("SELECT city FROM cities WHERE city_id = " . $row['city_id']);
                            $city = mysqli_fetch_assoc($city_query)['city'];
                        ?>

                            <th>City</th>
                            <td><?= $city ?></td>
                        </tr>
                        <tr>
                            <th>Number of bedrooms</th>
                            <td><?= $row["bedrooms"]; ?></td>
                        </tr>
                        <tr>
                            <th>Number of bathrooms</th>
                            <td><?= $row["bathrooms"]; ?></td>
                        </tr>
                        <tr>
                            <th>Area of the house</th>
                            <td><?= $row["sqft"]; ?> square feet</td>
                        </tr>
                    </table>
                </section>
            </div><br>
            <!-- Image Gallery -->
            <section class="gallery">
                <h2>Take a look inside...</h2>
                <div class="gallery-container">
                    <?php while ($images = mysqli_fetch_assoc($resultt)): ?>
                        <img src="<?= $images["image_url"] ?: '../img/z-image1.webp'?>" alt="">
                    <?php endwhile; ?>
                </div>
            </section><br><br>
            
            <aside class="contact-form">
                <div class="agent-info">
                    <h2>Contact the Property's Owner</h2>
                    <p>Enter your information to inquire about the property.</p>
                </div>
                <form action="sendMessage.php?id=<?=$artID?>" method="post">
                    <input type="text" name="name" placeholder="Name" required>
                    <input type="tel" name="phone" placeholder="Phone" required>
                    <input type="email" name="email" placeholder="Email" required>
                    <textarea name="message" placeholder="Hi, I want to be more informed. Can you please provide more details?"></textarea>
                    <button type="submit" name="submit" class="send-message">Send Message</button>
                </form>
            </aside>
        </div>
        <!-- property detail end !-->

        

        <!-- Footer Start -->
        <div class="container-fluid bg-dark text-white-50 footer pt-5 mt-5">
            <div class="container py-5">
                <div class="row g-5">
                    <div class="col-lg-4 col-md-6">
                        <h5 class="text-white mb-4">Get In Touch</h5>
                        <p class="mb-2"><i class="fa fa-map-marker-alt me-3"></i>Saida, Lebanon</p>
                        <p class="mb-2"><i class="fa fa-phone-alt me-3"></i>+961 001 563</p>
                        <p class="mb-2"><i class="fa fa-envelope me-3"></i>HomeIt@gmail.com</p>
                        <div class="d-flex pt-2">
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-youtube"></i></a>
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-linkedin-in"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <h5 class="text-white mb-4">Quick Links</h5>
                        <a class="btn btn-link text-white-50" href="about.html">About Us</a>
                        <a class="btn btn-link text-white-50" href="contact.php">Contact Us</a>
                        <a class="btn btn-link text-white-50" href="properties-list.php">Properties List</a>
                        <a class="btn btn-link text-white-50" href="">Privacy Policy</a>
                        <a class="btn btn-link text-white-50" href="">Terms & Condition</a>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <h5 class="text-white mb-4">About HomeIt</h5>
                        <p>HomeIt is your trusted partner in finding your dream home. Whether you're looking for apartments, villas, or real estate trends, we provide expert guidance every step of the way.</p>
                        <p><i class="fa fa-heart text-primary"></i> Built with passion and commitment.</p>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="copyright">
                    <div class="row">
                        <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                            &copy; <a class="border-bottom" href="#">HomeIt</a>
                        </div>
                        <div class="col-md-6 text-center text-md-end">
                            <div class="footer-menu">
                                <a href="#">Home</a>
                                <a href="#">Cookies</a>
                                <a href="#">Help</a>
                                <a href="#">FAQs</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer End -->


        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
    </div>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="../js/wow/wow.min.js"></script>
    
    <!-- Template Javascript -->
    <script src="../js/main.js"></script>
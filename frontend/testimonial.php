<?php

  require_once '../inc/connection.php';

?>




<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>HomeIt - Your Trusted Partner in Finding the Perfect Home</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">


    <!-- Favicon -->
    <link href="..\img\icon.png" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Inter:wght@700;800&display=swap" rel="stylesheet">
    
    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="../css/style.css" rel="stylesheet">
</head>

<body>
    <div class="container-xxl bg-white p-0">

        <!-- Navbar Start -->
        <div class="container-fluid nav-bar bg-transparent">
            <nav class="navbar navbar-expand-lg bg-white navbar-light py-0 px-4">
                <a href="index.php" class="navbar-brand d-flex align-items-center text-center">
                    <div class="icon p-2 me-2">
                        <img class="img-fluid" src="../mg/icon.png" alt="Icon" style="width: 30px; height: 30px;">
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
                        
                            <a href="property-list.php" class="nav-item nav-link">Property List</a>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle active" data-bs-toggle="dropdown">Pages</a>
                            <div class="dropdown-menu rounded-0 m-0">
                                
                                <a href="../sign_up_sign_in/register.php" class="dropdown-item">SignUp</a>
                                
                                <a href="../sign_up_sign_in/login.php" class="dropdown-item">Login</a>
                                <a href="testimonial.php" class="dropdown-item active">Testimonial</a>
                            </div>
                        </div>
                        <a href="contact.php" class="nav-item nav-link">Contact</a>
                    </div>
                    <a href="../sign_up_sign_in/login.php" class="btn btn-primary px-3 d-none d-lg-flex">Login</a>
                </div>
            </nav>
        </div>
        <!-- Navbar End -->


        <!-- Header Start -->
        <div class="container-fluid header bg-white p-0">
            <div class="row g-0 align-items-center flex-column-reverse flex-md-row">
                <div class="col-md-6 p-5 mt-lg-5">
                    <h1 class="display-5 animated fadeIn mb-4">Testimonial</h1> 
                        <nav aria-label="breadcrumb animated fadeIn">
                        <ol class="breadcrumb text-uppercase">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item"><a href="#">Pages</a></li>
                            <li class="breadcrumb-item text-body active" aria-current="page">Testimonial</li>
                        </ol>
                    </nav>
                </div>
                <div class="col-md-6 animated fadeIn">
                    <img class="img-fluid" src="../img/z-header1.webp" alt="">
                </div>
            </div>
        </div>
        <!-- Header End -->


        <!-- Search Start -->
        <div class="container-fluid bg-primary mb-5 " style="padding: 35px;">
            <div class="container">
                <div class="row g-2">
                    <div class="col-md-10">
                        <div class="row g-2">
                            <div class="col-md-4">
                                <input type="text" class="form-control border-0 py-3" placeholder="Search Keyword">
                            </div>
                            <div class="col-md-4">
                                <select class="form-select border-0 py-3">
                                    <option selected>Property Type</option>
                                    <option value="1">House</option>
                                    <option value="2">Apartment</option>
                                    <option value="3">Villa</option>
                                </select>
                            </div>
                            <div class="col-md-4">
                                <select class="form-select border-0 py-3">
                                    <option selected>Location</option>
                                    <option value="1">Saida</option>
                                    <option value="2">Tyre</option>
                                    <option value="3">Beirut</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <button class="btn btn-dark border-0 w-100 py-3">Search</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- Search Section End -->

        <?php

            $sql = "SELECT * FROM client_reviews";
            $all_reviews = $con->query($sql);

        ?>


        <!-- Testimonial Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="text-center mx-auto mb-5" style="max-width: 600px;">
                    <h1 class="mb-3">Our Clients Say!</h1>
                    <p>Take a look at what our clients are saying about their experience with us. From personalized service to finding 
                        the ideal home, we're committed to making every client's dream come true.</p>
                </div>
                <div class="owl-carousel testimonial-carousel">
                <?php while($row = mysqli_fetch_assoc($all_reviews)){ ?>
                    <div class="testimonial-item bg-light rounded p-3">
                        <div class="bg-white border rounded p-4">
                        
                            <p><?php echo $row["message"];  ?></p>
                            <div class="d-flex align-items-center">
                                <img class="img-fluid flex-shrink-0 rounded" src="../img/dumbo.jfif" style="width: 45px; height: 45px;">
                                <div class="ps-3">
                                    <h6 class="fw-bold mb-1"><?php echo $row["name"];  ?></h6>
                                    <small>client</small>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php }?>
                </div>
            </div>
        </div>
        <!-- Testimonial End -->
        


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
</body>

</html>
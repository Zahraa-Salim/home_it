<?php

  require_once 'inc/connection.php';

  $sql = "SELECT * FROM client_reviews ORDER BY RAND() LIMIT 4";
  $all_reviews = $con->query($sql);

?>



<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>HomeIt - Your Trusted Partner in Finding the Perfect Home</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <!-- Favicon -->
    <link href="img\icon.png" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Inter:wght@700;800&display=swap" rel="stylesheet">
    
    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
</head>

<body>
    <div class="container-xxl bg-white p-0">

        <!-- Navbar Start -->
        <div class="container-fluid nav-bar bg-transparent">
            <nav class="navbar navbar-expand-lg bg-white navbar-light py-0 px-4">
                <a href="frontend/index.php" class="navbar-brand d-flex align-items-center text-center">
                    <div class="icon p-2 me-2">
                        <img class="img-fluid" src="img/icon.png" alt="Icon" style="width: 30px; height: 30px;">
                    </div>
                    <h1 class="m-0 text-primary">HomeIt</h1>
                </a>
                <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <div class="navbar-nav ms-auto">
                        <a href="frontend/index.php" class="nav-item nav-link active">Home</a>
                        <a href="frontend/about.html" class="nav-item nav-link">About</a>
                        
                            <a href="frontend/property-list.php" class="nav-item nav-link">Property List</a>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
                            <div class="dropdown-menu rounded-0 m-0">
                                
                                <a href="sign_up_sign_in/register.php" class="dropdown-item">SignUp</a>
                                
                                <a href="sign_up_sign_in/login.php" class="dropdown-item">Login</a>
                                <a href="frontend/testimonial.php" class="dropdown-item">Testimonial</a>
                            </div>
                        </div>
                        <a href="frontend/contact.php" class="nav-item nav-link">Contact</a>
                    </div>
                    <a href="sign_up_sign_in/login.php" class="btn btn-primary px-3 d-none d-lg-flex">Login</a>
                </div>
            </nav>
        </div>
        <!-- Navbar End -->

        <!-- Header Start -->
        <div class="container-fluid bg-white p-0">
            <div class="row g-0 align-items-center flex-column-reverse flex-md-row">
                <div class="col-md-6 p-5">
                    <h1 class="display-5 mb-4">Find A <span class="text-primary">Perfect Home</span> To Live With Your Family</h1>
                    <p class="mb-4">Discover homes designed for family living spacious rooms, safe neighborhoods, and modern amenities. Make the best choice for your loved ones today and start your journey toward a happier, more comfortable life.</p>
                    <a href="#" class="btn btn-primary py-3 px-5">Get Started</a>
                </div>
                <div class="col-md-6">
                    <div class="header-carousel">
                        <img class="img-fluid w-100" src="img/carousel-1.jpg" alt="Home Image">
                    </div>
                </div>
            </div>
        </div>
        <!-- Header End -->



        <!-- Search Section Start -->
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
                                    <option value="1">House</option>
                                    <option value="2">Apartment</option>
                                    <option value="3">Villa</option>
                                </select>
                            </div>
                            <div class="col-md-4">
                                <select class="form-select border-0 py-3">
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


        <!-- About Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="row g-5 align-items-center">
                    <div class="col-lg-6">
                        <div class="about-img position-relative overflow-hidden p-5 pe-0">
                            <img class="img-fluid w-100" src="img/about-us-pexels.jpg">
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <h1 class="mb-4">#1 Place To Find The Perfect Property</h1>
                        <p class="mb-4">Discover your dream home with us! From cozy apartments to luxurious villas, 
                                        we offer a wide range of properties tailored to suit every lifestyle and budget.<br>
                                        Explore our listings, get expert guidance, and make your next move stress-free. 
                                        Start your journey to the perfect property today!"</p>
                        <p><i class="fa fa-check text-primary me-3"></i>Browse properties that match your vision and budget.</p>
                        <p><i class="fa fa-check text-primary me-3"></i>From start to finish, we`re here to guide you to your perfect property.</p>
                        <p><i class="fa fa-check text-primary me-3"></i>Start your journey to a new home with our trusted guidance.</p>
                        <a class="btn btn-primary py-3 px-5 mt-3" href="frontend/about.html">Read More</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- About End -->


       <!-- Property List Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="row g-0 gx-5 align-items-end">
                    <!-- Section Title -->
                    <div class="col-lg-6">
                        <div class="text-start mx-auto mb-5">
                            <h1 class="mb-3">Property Listing</h1>
                            <p>Check out our latest property listings, offering a range of options for every taste and budget. Detailed information and high-quality images help you find your ideal home.</p>
                        </div>
                    </div>
                    <!-- Tabs -->
                    <div class="col-lg-6 text-start text-lg-end">
                        <ul class="nav nav-pills d-inline-flex justify-content-end mb-5">
                            <li class="nav-item me-2">
                                <a class="btn btn-outline-primary active" data-bs-toggle="pill" href="#tab-1">Featured</a>
                            </li>
                            <li class="nav-item me-2">
                                <a class="btn btn-outline-primary" data-bs-toggle="pill" href="#tab-2">For Sell</a>
                            </li>
                            <li class="nav-item me-0">
                                <a class="btn btn-outline-primary" data-bs-toggle="pill" href="#tab-3">For Rent</a>
                            </li>
                        </ul>
                    </div>
                </div>

                <!-- Tab Content -->
                <div class="tab-content">
                    <?php 
                    // Tabs Array
                    $all_properties = $con->query("SELECT * FROM properties WHERE status = 'available' ORDER BY RAND() LIMIT 6");
                    $sell_properties = $con->query("SELECT * FROM properties WHERE purpose = 'for sell' AND status = 'available' ORDER BY RAND() LIMIT 6");
                    $rent_properties = $con->query("SELECT * FROM properties WHERE purpose = 'for rent' AND status = 'available' ORDER BY RAND() LIMIT 6");
                    
                    $tabs = [
                        'tab-1' => $all_properties,
                        'tab-2' => $sell_properties,
                        'tab-3' => $rent_properties,
                    ];
                    foreach ($tabs as $tabId => $properties): ?>
                    <div id="<?= $tabId ?>" class="tab-pane fade <?= $tabId === 'tab-1' ? 'show active' : '' ?> p-0">
                        <div class="row g-4">
                            <?php while ($row = mysqli_fetch_assoc($properties)): ?>
                                <!-- Property Card -->
                                <div class="col-lg-4 col-md-6">
                                    <div class="property-item rounded overflow-hidden">
                                        <!-- Property Image -->
                                        <div class="position-relative overflow-hidden">
                                            <?php $image = $row["main_image"];
                                                $image = substr($image, 3); ?>
                                            <a href="frontend/property_details.php?id=<?= $row['property_id'] ?>">
                                                <img class="img-fluid" src='<?= $image ?: '../img/z-image1.webp' ?>' alt="">
                                            </a>
                                            <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">
                                                <?= $row["purpose"] ?>
                                            </div>
                                            <?php 
                                            $type_query = $con->query("SELECT type FROM property_types WHERE type_id = " . $row['type_id']);
                                            $property_type = mysqli_fetch_assoc($type_query)['type'];
                                            ?>
                                            <div class="bg-white rounded-top text-primary position-absolute start-0 bottom-0 mx-4 pt-1 px-3">
                                                <?= $property_type ?>
                                            </div>
                                        </div>
                                        <!-- Property Info -->
                                        <div class="p-4 pb-0">
                                            <h5 class="text-primary mb-3">$<?= $row["price"] ?></h5>
                                            <a class="d-block h5 mb-2" href="frontend/property_details.php?id=<?= $row['property_id'] ?>">
                                                <?= $row["title"] ?>
                                            </a>
                                            <p><i class="fa fa-map-marker-alt text-primary me-2"></i><?= $row["address"] ?></p>
                                        </div>
                                        <!-- Property Details -->
                                        <div class="d-flex border-top">
                                            <small class="flex-fill text-center border-end py-2">
                                                <i class="fa fa-ruler-combined text-primary me-2"></i><?= $row["sqft"] ?> Sqft
                                            </small>
                                            <small class="flex-fill text-center border-end py-2">
                                                <i class="fa fa-bed text-primary me-2"></i><?= $row["bedrooms"] ?> Bed
                                            </small>
                                            <small class="flex-fill text-center py-2">
                                                <i class="fa fa-bath text-primary me-2"></i><?= $row["bathrooms"] ?> Bath
                                            </small>
                                        </div>
                                    </div>
                                </div>
                            <?php endwhile; ?>
                            <!-- Browse More Button -->
                            <div class="col-12 text-center">
                                <a class="btn btn-primary py-3 px-5" href="frontend/property-list.php">Browse More Properties</a>
                            </div>
                        </div>
                    </div>
                    <?php endforeach; ?>
                </div>

            </div>
        </div>
        <!-- Property List End -->


        <!-- Testimonial Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="text-center mx-auto mb-5"style="max-width: 600px;">
                    <h1 class="mb-3">Our Clients Say!</h1>
                    <p>Take a look at what our clients are saying about their experience with us. From personalized service to finding 
                        the ideal home, we're committed to making every client's dream come true.</p>
                </div>

                <div class="owl-carousel testimonial-carousel">
                <?php 
                if ($all_reviews) {
                    while ($row = mysqli_fetch_assoc($all_reviews)) { ?>
                        <div class="testimonial-item bg-light rounded p-3">
                            <div class="bg-white border rounded p-4">
                                <p><?php echo htmlspecialchars($row["message"]); ?></p>
                                <div class="d-flex align-items-center">
                                    <img class="img-fluid flex-shrink-0 rounded" 
                                        src="img/dumbo.jfif" 
                                        style="width: 45px; height: 45px;">
                                    <div class="ps-3">
                                        <h6 class="fw-bold mb-1"><?php echo htmlspecialchars($row["name"]); ?></h6>
                                        <small>client</small>
                                    </div>
                                </div>
                            </div>
                        </div>
                <?php 
                    }
                } else {
                    echo "<p>No testimonials available at this time.</p>";
                }
                ?>
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
                        <a class="btn btn-link text-white-50" href="frontend/about.html">About Us</a>
                        <a class="btn btn-link text-white-50" href="frontend/contact.php">Contact Us</a>
                        <a class="btn btn-link text-white-50" href="frontend/properties-list.php">Properties List</a>
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
    <script src="js/wow/wow.min.js"></script>
    
    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>

</html>
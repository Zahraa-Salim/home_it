
<?php

    session_start();
    if (!isset($_SESSION['user_id'])){
    header("location:../sign_up_sign_in/login.php?error=2");
    exit();
    }

    include'../inc/connection.php';

    if (isset($_POST['submit'])) {

        $user_id=$_SESSION['user_id'];

        // Sanitize and retrieve form inputs
        $property_title = $con->real_escape_string($_POST['property_title']);
        $property_description = $con->real_escape_string($_POST['property_description']);
        $property_price = (float) $_POST['property_price'];
        $property_address = $con->real_escape_string($_POST['property_address']);
        $property_city = $con->real_escape_string($_POST['property_city']);
        $bedrooms = (int) $_POST['bedrooms'];
        $bathrooms = (int) $_POST['bathrooms'];
        $area = (int) $_POST['area'];
        $property_type = $con->real_escape_string($_POST['property_type']);
        $status = $con->real_escape_string($_POST['status']);

        // File upload directories
        $mainImageDir = 'uploads/main_images/';
        $galleryImageDir = 'uploads/gallery_images/';

        if (!is_dir($mainImageDir)) mkdir($mainImageDir, 0777, true);
        if (!is_dir($galleryImageDir)) mkdir($galleryImageDir, 0777, true);

        // Insert property details into `properties` table
        $query = "
            INSERT INTO properties 
            (title, description, price, address, city, bedrooms, bathrooms, sqft, property_type, status,user_id) 
            VALUES ('$property_title', '$property_description', $property_price, '$property_address', '$property_city', $bedrooms, $bathrooms, $area, '$property_type', '$status','$user_id')
        ";
        $con->query($query);

        // Get the inserted property ID
        $property_id = $con->insert_id;

        // Handle main image upload
        if (!empty($_FILES['main_image']['tmp_name'])) {
            $mainImageTmpPath = $_FILES['main_image']['tmp_name'];
            $mainImageName = uniqid('main_') . '.' . pathinfo($_FILES['main_image']['name'], PATHINFO_EXTENSION);
            $mainImagePath = $mainImageDir . $mainImageName;

            move_uploaded_file($mainImageTmpPath, $mainImagePath);
            // Optionally save the main image path into the `properties` table
            $sql = "UPDATE properties SET main_image = '$mainImagePath' WHERE property_id = $property_id";
            mysqli_query($con,$sql) or die(mysqli_error($con));
        }

        // Handle gallery images upload
        for ($i = 1; $i <= 4; $i++) {
            $galleryImageInput = 'gallery_image_' . $i;

            if (!empty($_FILES[$galleryImageInput]['tmp_name'])) {
                $galleryImageTmpPath = $_FILES[$galleryImageInput]['tmp_name'];
                $galleryImageName = uniqid("gallery_{$i}_") . '.' . pathinfo($_FILES[$galleryImageInput]['name'], PATHINFO_EXTENSION);
                $galleryImagePath = $galleryImageDir . $galleryImageName;

                move_uploaded_file($galleryImageTmpPath, $galleryImagePath);
                // Insert gallery image path into `images` table
                $sql = "INSERT INTO images (property_id, image_url) VALUES ($property_id, '$galleryImagePath')";
                mysqli_query($con,$sql) or die(mysqli_error($con));
            }
        }
    }
    header("location:addProperty.php");
?>


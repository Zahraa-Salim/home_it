<?php

@include '../inc/connection.php';

session_start();
session_unset();
session_destroy();

header('location:../frontend/index.php');

?>
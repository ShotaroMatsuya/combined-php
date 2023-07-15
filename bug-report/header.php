<?php declare( strict_types=1 );

require_once __DIR__ .'/vendor/autoload.php';
require_once __DIR__ . '/src/Exception/exception.php';
require_once __DIR__ . '/src/read.php';
require_once __DIR__ . '/src/add.php';
require_once __DIR__ . '/src/update.php';
require_once __DIR__ . '/src/delete.php';

ob_start();
session_start();
date_default_timezone_set("Asia/Tokyo"); 

if (!isset($_SESSION['token'])) {
    $_SESSION['token'] = bin2hex(random_bytes(32));
}

if (
    isset($_SESSION["token"]) 
    && isset($_POST["token"]) 
    && $_SESSION["token"] !== $_POST["token"]
    ) {
    $_SESSION["token"] = bin2hex(random_bytes(32));
    unset($_POST);
    header("Location: 500.php");
}
<?php
$host = 'localhost'; // Replace with your host
$username = 'root'; // Replace with your database username
$password = ''; // Replace with your database password
$db_name = 'esp32cam_video'; // Replace with your database name

try {
    $pdo = new PDO("mysql:host=$host;dbname=$db_name;charset=utf8mb4", $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Database connection failed: " . $e->getMessage());
}
?>

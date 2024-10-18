<?php
$servername = "localhost"; // เปลี่ยนตามเซิร์ฟเวอร์ MySQL ของคุณ
$username = "root";
$password = "";
$dbname = "esp32cam_video";

$conn = new mysqli($servername, $username, $password, $dbname);

// ตรวจสอบการเชื่อมต่อ
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Check if an image was sent
if (isset($_FILES['image'])) {
    $image = $_FILES['image'];
    $imageName = $image['name'];
    $imagePath = './uploads/' . basename($imageName); // Directory where you want to save the images

    // Save the image file
    if (move_uploaded_file($image['tmp_name'], $imagePath)) {
        // Prepare and bind
        $stmt = $conn->prepare("INSERT INTO images (name, path_file, date, time) VALUES (?, ?, CURDATE(), CURTIME())");
        $stmt->bind_param("ss", $imageName, $imagePath);

        // Execute the query
        if ($stmt->execute()) {
            echo "Image uploaded successfully.";
        } else {
            echo "Error: " . $stmt->error;
        }
        $stmt->close();
    } else {
        echo "Failed to upload image.";
    }
}

$conn->close();
?>

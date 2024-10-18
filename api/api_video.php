<?php
header("Content-Type: application/json");
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, PUT, DELETE");
header("Access-Control-Allow-Headers: Content-Type");

require 'config_api.php';

// Get the HTTP method (GET, POST, PUT, DELETE)
$method = $_SERVER['REQUEST_METHOD'];

// Get the ID if provided in the request
$id = isset($_GET['id']) ? intval($_GET['id']) : null;

switch ($method) {
    case 'GET':
        if ($id) {
            // Get a single video by ID
            $stmt = $pdo->prepare("SELECT * FROM videos WHERE id = ?");
            $stmt->execute([$id]);
            $video = $stmt->fetch(PDO::FETCH_ASSOC);
            echo json_encode($video);
        } else {
            // Get all videos
            $stmt = $pdo->query("SELECT * FROM videos");
            $videos = $stmt->fetchAll(PDO::FETCH_ASSOC);
            echo json_encode($videos);
        }
        break;

    case 'POST':
        // Create a new video record
        $data = json_decode(file_get_contents('php://input'), true);
        $stmt = $pdo->prepare("INSERT INTO videos (name, path_file, date, time) VALUES (?, ?, ?, ?)");
        $stmt->execute([$data['name'], $data['path_file'], $data['date'], $data['time']]);
        echo json_encode(['id' => $pdo->lastInsertId(), 'message' => 'Video created']);
        break;

    case 'PUT':
        // Update an existing video record
        if (!$id) {
            echo json_encode(['error' => 'No ID provided']);
            break;
        }
        $data = json_decode(file_get_contents('php://input'), true);
        $stmt = $pdo->prepare("UPDATE videos SET name = ?, path_file = ?, date = ?, time = ? WHERE id = ?");
        $stmt->execute([$data['name'], $data['path_file'], $data['date'], $data['time'], $id]);
        echo json_encode(['message' => 'Video updated']);
        break;

    case 'DELETE':
        // Delete a video record
        if (!$id) {
            echo json_encode(['error' => 'No ID provided']);
            break;
        }
        $stmt = $pdo->prepare("DELETE FROM videos WHERE id = ?");
        $stmt->execute([$id]);
        echo json_encode(['message' => 'Video deleted']);
        break;

    default:
        echo json_encode(['error' => 'Invalid request method']);
        break;
}
?>
// lib/services/api_service.dart
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/video_models.dart';

class ApiService {
  final String apiUrl = 'http://127.0.0.1/esp32cam_off/api/api_video.php';

  // Fetch all videos
  Future<List<Video>> fetchVideos() async {
    try {
      final response = await http.get(Uri.parse(apiUrl));
      if (response.statusCode == 200) {
        List<dynamic> data = jsonDecode(response.body);
        return data.map((videoJson) => Video.fromJson(videoJson)).toList();
      } else {
        throw Exception('Failed to load videos');
      }
    } catch (e) {
      throw Exception('Failed to load videos: $e');
    }
  }
}

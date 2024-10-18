// lib/views/video_list_view.dart
import 'dart:async';
import 'package:flutter/material.dart';
import '../models/video_models.dart';
import '../services/api_service.dart';
import 'video_player_view.dart'; // Import the new video player view

class VideoListView extends StatefulWidget {
  @override
  _VideoListViewState createState() => _VideoListViewState();
}

class _VideoListViewState extends State<VideoListView> {
  late Future<List<Video>> _videoList;
  final ApiService _apiService = ApiService();
  List<Video> _currentVideos = []; // To hold current video data
  Timer? _timer; // Timer for periodic updates

  @override
  void initState() {
    super.initState();
    _fetchVideos(); // Initial fetch
    _startPeriodicFetch(); // Start periodic fetching
  }

  // Function to fetch videos
  void _fetchVideos() {
    _apiService.fetchVideos().then((videos) {
      // Check if there are new videos
      if (videos.isNotEmpty && videos.length > _currentVideos.length) {
        setState(() {
          _currentVideos = videos; // Update the list if there are new videos
        });
      }
    }).catchError((error) {
      // Handle error if needed
      print("Error fetching videos: $error");
    });
  }

  // Function to start a timer for periodic fetch
  void _startPeriodicFetch() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      _fetchVideos(); // Fetch videos every 10 seconds
    });
  }

  @override
  void dispose() {
    _timer?.cancel(); // Cancel timer when disposing
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Videos'),
        backgroundColor: Colors.teal, // Customize the color
      ),
      body: _currentVideos.isEmpty
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: _currentVideos.length,
              itemBuilder: (context, index) {
                final video = _currentVideos[index];
                return Card(
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('ID: ${video.id}'),
                            Text('Name: ${video.name}'),
                            Text('Date: ${video.date}'),
                            Text('Time: ${video.time}'),
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Ensure the video name includes the correct extension
                            String videoUrl =
                                'http://127.0.0.1/esp32cam_off/videos/${video.name}';

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    VideoPlayerView(videoUrl: videoUrl),
                              ),
                            );
                          },
                          child: Text('View Video'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                Colors.teal, // Button background color
                            foregroundColor: Colors.white, // Text color
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(8), // Rounded corners
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }
}

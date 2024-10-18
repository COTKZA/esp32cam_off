import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerView extends StatefulWidget {
  final String videoUrl;

  VideoPlayerView({required this.videoUrl});

  @override
  _VideoPlayerViewState createState() => _VideoPlayerViewState();
}

class _VideoPlayerViewState extends State<VideoPlayerView> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    print("Video URL: ${widget.videoUrl}"); // Log the video URL
    _controller = VideoPlayerController.network(widget.videoUrl)
      ..initialize().then((_) {
        setState(() {
          // Play the video automatically after it is initialized
          _controller.play();
        });
      }).catchError((error) {
        // Handle the error
        print("Error initializing video: $error");
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Error initializing video: $error")),
        );
      });
  }

  @override
  void dispose() {
    _controller
        .dispose(); // Clean up the controller when the widget is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video Player'),
      ),
      body: Center(
        child: _controller.value.isInitialized
            ? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              )
            : CircularProgressIndicator(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _controller.value.isPlaying
                ? _controller.pause()
                : _controller.play();
          });
        },
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }
}

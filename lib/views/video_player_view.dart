import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class VideoPlayerView extends StatefulWidget {
  final String videoUrl;
  const VideoPlayerView({super.key, required this.videoUrl});

  @override
  State<VideoPlayerView> createState() => _VideoPlayerViewState();
}

class _VideoPlayerViewState extends State<VideoPlayerView> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(widget.videoUrl))
      ..initialize().then((_) {
        setState(() {}); // Refresh once video is loaded
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 16 / 9,
          child: _controller.value.isInitialized
              ? Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    VideoPlayer(_controller),
                    _buildVideoControls(),
                  ],
                )
              : const Center(child: CircularProgressIndicator()),
        ),
        // Video Metadata (Title, Channel, etc.) below the player
      ],
    );
  }

  Widget _buildVideoControls() {
    return VideoProgressIndicator(_controller, allowScrubbing: true);
  }
}



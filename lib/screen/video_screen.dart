import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({Key? key}) : super(key: key);

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  final VideoPlayerController videoPlayerController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
      Padding(
      padding: const EdgeInsets.all(8.0),
      child: Chewie(
        controller: _chewieController,
      ),
    );
        ],
      ),
    );
  }
}

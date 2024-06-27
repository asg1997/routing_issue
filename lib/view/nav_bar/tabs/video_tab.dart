import 'package:flutter/material.dart';

class VideoTab extends StatelessWidget {
  const VideoTab({super.key});
  static const name = 'video_tab';
  static const path = '/video_tab';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Video')),
    );
  }
}

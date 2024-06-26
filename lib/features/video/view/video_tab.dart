import 'package:fa_piano/core/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class VideoTab extends ConsumerWidget {
  const VideoTab({super.key});
  static const name = 'video_tab';
  static const path = '/video_tab';
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const CustomScaffold(
      body: Center(child: Text('Video')),
    );
  }
}

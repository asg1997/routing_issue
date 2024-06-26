import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AssetImageButton extends ConsumerWidget {
  const AssetImageButton({required this.asset, required this.onTap, super.key});
  final String asset;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Image.asset(asset),
    );
  }
}

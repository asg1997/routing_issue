import 'package:fa_piano/core/utils/consts/app_colors.dart';
import 'package:fa_piano/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CloseButtonWidget extends ConsumerWidget {
  const CloseButtonWidget({
    required this.onTap,
    this.color,
    super.key,
  });
  final Color? color;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Image.asset(
            AppImages.closeAppBarIc,
            height: 19,
            width: 19,
            color: color ?? AppColors.bg,
          ),
        ),
      ),
    );
  }
}

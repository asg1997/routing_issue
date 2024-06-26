import 'package:fa_piano/core/utils/consts/app_colors.dart';
import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({
    super.key,
    this.side = 30,
    this.color,
    this.strokeWidth = 4,
  });
  final double side;
  final Color? color;
  final double strokeWidth;
  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: Center(
        child: SizedBox.square(
          dimension: side,
          child: CircularProgressIndicator(
            strokeCap: StrokeCap.round,
            strokeWidth: strokeWidth,
            color: color ?? AppColors.secondary,
          ),
        ),
      ),
    );
  }
}

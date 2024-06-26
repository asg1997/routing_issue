import 'package:fa_piano/core/utils/consts/app_colors.dart';
import 'package:fa_piano/core/utils/consts/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PageDescription extends ConsumerWidget {
  const PageDescription({this.text, this.child, super.key})
      : assert(text != null || child != null, 'text or child must be null');
  final String? text;
  final Widget? child;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 12,
        bottom: 12,
      ),
      width: double.infinity,
      clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(
        color: AppColors.secondary,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
      ),
      child: child ??
          Text(
            text!,
            style: AppFonts.regular14.copyWith(
              color: AppColors.onSurface,
              height: 20 / 14,
            ),
          ),
    );
  }
}

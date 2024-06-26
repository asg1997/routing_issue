import 'package:fa_piano/core/utils/consts/app_colors.dart';
import 'package:fa_piano/core/utils/consts/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class AppBarNavigationLabel extends ConsumerWidget {
  const AppBarNavigationLabel({
    required this.title,
    this.subtitles = const [],
    this.showBackButton = false,
    super.key,
  });
  final String title;
  final List<String> subtitles;
  final bool showBackButton;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const textColor = AppColors.onSurface;
    final textStyle = AppFonts.regular12.copyWith(color: textColor, height: 1);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        border: Border.all(
          color: AppColors.bg,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: textStyle.copyWith(
              color: textColor.withOpacity(subtitles.isEmpty ? 1 : 0.5),
            ),
          ),
          ...List.generate(
            subtitles.length,
            (index) {
              final isLastElement = index == subtitles.length - 1;
              return Row(
                children: [
                  const Gap(4),
                  Container(
                    width: 4,
                    height: 4,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.onSurface
                          .withOpacity(isLastElement ? 1 : 0.5),
                    ),
                  ),
                  const Gap(4),
                  Text(
                    subtitles[index],
                    style: textStyle.copyWith(
                      color: textColor.withOpacity(isLastElement ? 1 : 0.5),
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}

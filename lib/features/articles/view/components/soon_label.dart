import 'package:fa_piano/core/utils/consts/app_colors.dart';
import 'package:fa_piano/core/utils/consts/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SoonLabel extends ConsumerWidget {
  const SoonLabel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(30),
      ),
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
      child: Text('Soon', style: AppFonts.regular14),
    );
  }
}

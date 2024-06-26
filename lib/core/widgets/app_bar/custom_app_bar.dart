import 'package:fa_piano/core/utils/consts/app_colors.dart';
import 'package:fa_piano/core/widgets/app_bar/app_bar_navigation_label.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class CustomAppBar extends ConsumerWidget {
  const CustomAppBar({
    this.trailing,
    this.leading,
    this.center,
    this.navigationLabel,
    super.key,
  });

  final Widget? trailing;
  final Widget? leading;
  final Widget? center;
  final AppBarNavigationLabel? navigationLabel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final safeArea = MediaQuery.of(context).viewPadding.top;
    return Container(
      padding: EdgeInsets.only(
        top: 20 + safeArea,
        bottom: 18,
        left: 16,
        right: 16,
      ),
      color: AppColors.secondary,
      child: Row(
        children: [
          if (trailing != null) trailing!,
          if (navigationLabel != null) ...[
            const Gap(20),
            navigationLabel!,
          ],
          if (center != null) Expanded(child: center!) else const Spacer(),
          if (leading != null) leading!,
        ],
      ),
    );
  }
}

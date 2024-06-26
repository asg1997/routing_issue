import 'package:fa_piano/core/widgets/app_bar/app_bar_navigation_label.dart';
import 'package:fa_piano/core/widgets/app_bar/custom_app_bar.dart';
import 'package:fa_piano/core/widgets/asset_image_button.dart';
import 'package:fa_piano/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

class ArticlesAppBar extends ConsumerWidget {
  const ArticlesAppBar({
    this.navigationPoints = const [],
    this.showBackButton = false,
    super.key,
  });
  final List<String> navigationPoints;
  final bool showBackButton;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomAppBar(
      navigationLabel: AppBarNavigationLabel(
        showBackButton: showBackButton,
        title: 'Статьи',
        subtitles: navigationPoints,
      ),
      trailing: Row(
        children: [
          if (showBackButton) ...[
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: SvgPicture.asset(AppImages.arrowBack),
            ),
          ] else
            Image.asset(AppImages.appBarLogoIc),
        ],
      ),
      leading: AssetImageButton(
        asset: AppImages.burgerMenuIc,
        onTap: () {},
      ),
    );
  }
}

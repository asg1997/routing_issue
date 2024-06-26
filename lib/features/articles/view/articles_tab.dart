import 'package:fa_piano/core/utils/consts/app_colors.dart';
import 'package:fa_piano/core/utils/consts/app_fonts.dart';
import 'package:fa_piano/core/widgets/widgets.dart';
import 'package:fa_piano/features/articles/view/components/articles_app_bar.dart';
import 'package:fa_piano/features/articles/view/masterstvo_1_page.dart';
import 'package:fa_piano/features/articles/view/masterstvo_2_page.dart';
import 'package:fa_piano/features/articles/view/pianizm_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ArticlesTab extends ConsumerWidget {
  const ArticlesTab({super.key});
  static const name = 'articles_tab';
  static const path = '/articles_tab';
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomScaffold(
      appBar: const ArticlesAppBar(),
      body: SizedBox(
        width: double.infinity,
        child: LayoutBuilder(
          builder: (_, constr) {
            final maxWidth = constr.maxWidth;
            final maxHeight = constr.maxHeight;
            return Stack(
              children: [
                Positioned(
                  top: maxHeight * 0.18,
                  left: maxWidth * -0.24,
                  child: _CircleBorderWidget(side: maxWidth * .6),
                ),
                Positioned(
                  top: maxHeight * -.1,
                  left: maxWidth * .4,
                  child: _CircleBorderWidget(side: maxWidth * .7),
                ),
                Positioned(
                  top: maxHeight * -.1,
                  left: maxWidth * .4,
                  child: _CircleBorderWidget(side: maxWidth * .7),
                ),
                Positioned(
                  top: maxHeight * .03,
                  left: maxWidth * .6,
                  child: const _CircleWidget(),
                ),
                Positioned(
                  top: maxHeight * .8,
                  left: maxWidth * .4,
                  child: _CircleBorderWidget(side: maxWidth * .7),
                ),
                Positioned(
                  top: maxHeight * 0.06,
                  left: maxWidth * 0.05,
                  child: _CircleWidget(
                    title: 'Пианизм',
                    onTap: () => PianizmPage.navigate(context),
                    side: maxWidth * 0.44,
                  ),
                ),
                Positioned(
                  top: maxHeight * .25,
                  left: maxWidth * .4,
                  child: _CircleWidget(
                    title: 'Мастерство I',
                    fontSize: 25,
                    onTap: () => Masterstvo1Page.navigate(context),
                    side: maxWidth * 0.71,
                  ),
                ),
                Positioned(
                  top: maxHeight * .42,
                  left: maxWidth * -.53,
                  child: _CircleBorderWidget(side: maxWidth * 1.32),
                ),
                Positioned(
                  top: maxHeight * .35,
                  left: maxWidth * .05,
                  child: const _CircleWidget(),
                ),
                Positioned(
                  top: maxHeight * .8,
                  left: maxWidth * .85,
                  child: const _CircleWidget(),
                ),
                Positioned(
                  top: maxHeight * .5,
                  left: maxWidth * -.13,
                  child: _CircleWidget(
                    title: 'Мастерство II',
                    fontSize: 25,
                    onTap: () => Masterstvo2Page.navigate(context),
                    side: maxWidth * 0.79,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _CircleWidget extends ConsumerWidget {
  const _CircleWidget({
    this.fontSize = 20,
    this.side = 43,
    this.title,
    this.onTap,
  });
  final double side;
  final String? title;
  final VoidCallback? onTap;
  final double fontSize;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: const BoxDecoration(
          color: AppColors.secondary,
          shape: BoxShape.circle,
        ),
        height: side,
        width: side,
        alignment: Alignment.center,
        child: title != null
            ? Text(
                title!,
                style: AppFonts.regular16.copyWith(
                  fontSize: fontSize,
                  color: AppColors.onSurface,
                ),
              )
            : null,
      ),
    );
  }
}

class _CircleBorderWidget extends ConsumerWidget {
  const _CircleBorderWidget({
    required this.side,
  });
  final double side;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: side,
      width: side,
      decoration: BoxDecoration(
        color: AppColors.bg,
        shape: BoxShape.circle,
        border: Border.all(color: const Color(0xFF8E8E8E)),
      ),
    );
  }
}

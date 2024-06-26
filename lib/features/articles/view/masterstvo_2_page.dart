import 'package:fa_piano/core/utils/consts/app_colors.dart';
import 'package:fa_piano/core/widgets/custom_scaffold.dart';
import 'package:fa_piano/features/articles/view/articles_pages/components/body_text.dart';
import 'package:fa_piano/features/articles/view/articles_pages/components/marker_text.dart';
import 'package:fa_piano/features/articles/view/components/articles_app_bar.dart';
import 'package:fa_piano/features/articles/view/components/page_description.dart';
import 'package:fa_piano/features/articles/view/components/soon_label.dart';
import 'package:fa_piano/features/articles/view/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class Masterstvo2Page extends ConsumerWidget {
  const Masterstvo2Page({super.key});
  static const name = 'masterstvo2';
  static const path = '/masterstvo2';
  static void navigate(BuildContext context) => context.pushNamed(name);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomScaffold(
      appBar: const ArticlesAppBar(
        showBackButton: true,
        navigationPoints: ['Пианизм', 'Мастерство II'],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PageDescription(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const BodyText(
                  '''
Цель пианиста - понять композитора.
''',
                  color: AppColors.onSurface,
                ),
                const MarkerText(
                  color: AppColors.onSurface,
                  text:
                      '''Каждая деталь нотного текста несет в себе сюжетную и образную идею композитора. ''',
                ),
                const MarkerText(
                  color: AppColors.onSurface,
                  text:
                      '''Мы стремимся находить структуру и взаимосвязи, видеть принципы развития и выразительности произведения. ''',
                ),
                const MarkerText(
                  color: AppColors.onSurface,
                  text:
                      '''Собственная интерпретация - это синтез возможностей пианиста и требований композитора.''',
                ),
                const Gap(20),
                RichText(
                  text: TextSpan(
                    style: Styles.bodyText.copyWith(color: AppColors.onSurface),
                    text:
                        '''Во второй части мы затронем возможности исполнителя, которые раскрывают его индивидуальность: ''',
                    children: [
                      TextSpan(
                        style: Styles.bodyText.copyWith(
                          color: AppColors.onSurface,
                          decoration: TextDecoration.underline,
                        ),
                        text: '''Голосоведение,''',
                      ),
                      const TextSpan(text: ' '),
                      TextSpan(
                        style: Styles.bodyText.copyWith(
                          color: AppColors.onSurface,
                          decoration: TextDecoration.underline,
                        ),
                        text: '''Взаимосвязи,''',
                      ),
                      const TextSpan(text: ' '),
                      TextSpan(
                        style: Styles.bodyText.copyWith(
                          color: AppColors.onSurface,
                          decoration: TextDecoration.underline,
                        ),
                        text: '''Гармония,''',
                      ),
                      const TextSpan(text: ' '),
                      TextSpan(
                        style: Styles.bodyText.copyWith(
                          color: AppColors.onSurface,
                          decoration: TextDecoration.underline,
                        ),
                        text: '''Баланс''',
                      ),
                      const TextSpan(text: ' '),
                      TextSpan(
                        style: Styles.bodyText.copyWith(
                          color: AppColors.onSurface,
                          decoration: TextDecoration.underline,
                        ),
                        text: '''Время''',
                      ),
                      const TextSpan(text: ' '),
                      TextSpan(
                        style: Styles.bodyText.copyWith(
                          color: AppColors.onSurface,
                          decoration: TextDecoration.underline,
                        ),
                        text: '''Комплиментарность''',
                      ),
                      const TextSpan(text: ' '),
                      TextSpan(
                        style: Styles.bodyText.copyWith(
                          color: AppColors.onSurface,
                          decoration: TextDecoration.underline,
                        ),
                        text: '''Музыкальная эссенция.''',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: Center(child: SoonLabel()),
          ),
        ],
      ),
    );
  }
}

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

class Masterstvo1Page extends ConsumerWidget {
  const Masterstvo1Page({super.key});

  static const name = 'masterstvo1';
  static const path = 'masterstvo1';
  static void navigate(BuildContext context) => context.pushNamed(name);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomScaffold(
      appBar: const ArticlesAppBar(
        showBackButton: true,
        navigationPoints: ['Пианизм', 'Мастерство I'],
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
Композитор - пианист - рояль. 
''',
                  color: AppColors.onSurface,
                ),
                const MarkerText(
                  color: AppColors.onSurface,
                  text:
                      '''Исполнитель должен научиться понимать нотный текст - распознавать задачи, поставленные композитором.''',
                ),
                const MarkerText(
                  color: AppColors.onSurface,
                  text:
                      '''Использовать особенности своего тела: научиться управлять весом, гибкостью рук и пальцев для желаемого звучания.''',
                ),
                const MarkerText(
                  color: AppColors.onSurface,
                  text:
                      '''Понимать возможности инструмента и особенности его устройства.''',
                ),
                const Gap(20),
                RichText(
                  text: TextSpan(
                    style: Styles.bodyText.copyWith(color: AppColors.onSurface),
                    text:
                        '''В первой части мы затронем навыки и знания, которые развивают музыкальные возможности исполнителя и его мышление: ''',
                    children: [
                      TextSpan(
                        style: Styles.bodyText.copyWith(
                          color: AppColors.onSurface,
                          decoration: TextDecoration.underline,
                        ),
                        text: '''Звук,''',
                      ),
                      const TextSpan(text: ' '),
                      TextSpan(
                        style: Styles.bodyText.copyWith(
                          color: AppColors.onSurface,
                          decoration: TextDecoration.underline,
                        ),
                        text: '''Слух,''',
                      ),
                      const TextSpan(text: ' '),
                      TextSpan(
                        style: Styles.bodyText.copyWith(
                          color: AppColors.onSurface,
                          decoration: TextDecoration.underline,
                        ),
                        text: '''Штрихи,''',
                      ),
                      const TextSpan(text: ' '),
                      TextSpan(
                        style: Styles.bodyText.copyWith(
                          color: AppColors.onSurface,
                          decoration: TextDecoration.underline,
                        ),
                        text: '''Интонирование''',
                      ),
                      const TextSpan(text: ' '),
                      TextSpan(
                        style: Styles.bodyText.copyWith(
                          color: AppColors.onSurface,
                        ),
                        text: ''' и ''',
                      ),
                      TextSpan(
                        style: Styles.bodyText.copyWith(
                          color: AppColors.onSurface,
                          decoration: TextDecoration.underline,
                        ),
                        text: ''' Фразировка. ''',
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

// ignore_for_file: lines_longer_than_80_chars

import 'package:fa_piano/core/utils/consts/app_colors.dart';
import 'package:fa_piano/core/utils/consts/app_decoration.dart';
import 'package:fa_piano/core/widgets/custom_scaffold.dart';
import 'package:fa_piano/features/articles/view/articles_pages/components/body_text.dart';
import 'package:fa_piano/features/articles/view/components/articles_app_bar.dart';
import 'package:fa_piano/features/articles/view/components/page_description.dart';
import 'package:fa_piano/features/articles/view/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NonLegatoPage extends ConsumerWidget {
  const NonLegatoPage({super.key});
  static void navigate(BuildContext context) => Navigator.push(
        context,
        MaterialPageRoute<void>(
          builder: (_) => const NonLegatoPage(),
        ),
      );
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomScaffold(
      appBar: const ArticlesAppBar(
        showBackButton: true,
        navigationPoints: ['Пианизм', 'Non-legato'],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PageDescription(
              child: RichText(
                text: TextSpan(
                  style: Styles.bodyText,
                  children: [
                    TextSpan(
                      style: Styles.bodyTextBold
                          .copyWith(color: AppColors.onSurface),
                      text: 'Non legato ',
                    ),
                    TextSpan(
                      style:
                          Styles.bodyText.copyWith(color: AppColors.onSurface),
                      text: '''
- штрих, в котором мы «подчеркиваем» каждую ноту.
Если в легато присутствует плавная передача веса из пальца в палец, то в non legato каждый палец независим и берет вес сверху. При этом, между звуками появляется дыхание, небольшая «пауза».''',
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: AppDecoration.padding.copyWith(top: 20, bottom: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BodyText('''
Каждый штрих имеет свои приемущества и сложности в трех основных составляющих: звукоизвлечение, внутреннее ведение и фразировка.
Приемущество legato в его понятной фразировке. 
Приемущество non legato в простоте звукоизвлечения.
'''),
                  RichText(
                    text: TextSpan(
                      style: Styles.bodyText,
                      children: [
                        TextSpan(
                          style: Styles.bodyText,
                          text:
                              'Эти два противоположных штриха объединяет сложность работы с внутренним ведением, развитием и  ',
                        ),
                        TextSpan(
                          style: Styles.bodyText
                              .copyWith(color: AppColors.onSurface),
                          text: '''интонированием. ''',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

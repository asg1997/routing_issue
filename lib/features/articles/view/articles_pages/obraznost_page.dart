// ignore_for_file: lines_longer_than_80_chars

import 'package:fa_piano/core/utils/consts/app_decoration.dart';
import 'package:fa_piano/core/widgets/widgets.dart';
import 'package:fa_piano/features/articles/view/articles_pages/components/body_text.dart';
import 'package:fa_piano/features/articles/view/articles_pages/components/marker_text.dart';
import 'package:fa_piano/features/articles/view/components/articles_app_bar.dart';
import 'package:fa_piano/features/articles/view/components/page_description.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class ObraznostPage extends ConsumerWidget {
  const ObraznostPage({super.key});
  static void navigate(BuildContext context) => Navigator.push(
        context,
        MaterialPageRoute<void>(
          builder: (_) => const ObraznostPage(),
        ),
      );
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomScaffold(
      appBar: const ArticlesAppBar(
        showBackButton: true,
        navigationPoints: ['Пианизм', 'Образность'],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const PageDescription(
              text: '''
      Образность и эмоциональные впечатления от произведения рождаются еще до его написания. Композитор воплощает их в звуках, используя возможности инструмента и традиций.
''',
            ),
            Padding(
              padding: AppDecoration.padding.copyWith(top: 20, bottom: 40),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BodyText('''
     У любого человека прежде всего рождается базовая эмоция - это может быть восторг, изумление, безмятежность, любовь и так далее. Для композитора  состояние становится основой для будущего произведения. Исполнители легко понимают базовые эмоции благодаря крупным композиторским приемам: гармонии, фактуре и форме.'''),
                  Gap(10),
                  BodyText(
                    '''
     Вместе с тем, в произведении существуют “действующие персонажи”: люди, животные или природные явления. Для их написания композитор использует определенные средства выразительности: мелодизм, штрих, фразировка, динамика, ритм и регистр. Их многообразие помогает композитору выбрать необходимые сочетания, чтобы наилучшим образом отразить  мысли, идеи и мечты. В этот момент рождается уникальное музыкальное произведение, с определенным сюжетом и характером.''',
                  ),
                  Gap(10),
                  BodyText('     Например:'),
                  MarkerText(
                    text:
                        'Интонировать мотивы или отдельные звуки, перекликающиеся в разных тактах и регистрах.',
                  ),
                  MarkerText(
                    text:
                        'Обращать внимание на столкновения диссонанснсов или наоборот, на возникающие консонансные созвучия.',
                  ),
                  MarkerText(
                    text:
                        'Выбирать баланс в аккордовой вертикали для наиболее подходящего звучания.',
                  ),
                  MarkerText(
                    text: 'Определять развитие микродинамики.',
                  ),
                  MarkerText(
                    text:
                        'Находить логическое развитие в гармониях и фактуре для целостности развития мелодии.',
                  ),
                  MarkerText(
                    text:
                        'Понять влияние ритма на изменения в восприятии мелодии, ее динамики, тембра и красочности.',
                  ),
                  Gap(10),
                  BodyText('''
     Внимание к деталям открывает перед пианистом возможности для выбора наилучших способов исполнить произведение и понять композитора. Задача исполнителя - прочувствовать значимость каждой ноты и найти ее место в образном замысле. '''),
                  Gap(10),
                  BodyText('''
     В зависимости от личного жизненного, творческого, духовного опыта каждый слушатель воспримет эту «историю звуков» по-разному и найдет в ней отражение своего внутреннего мира.'''),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

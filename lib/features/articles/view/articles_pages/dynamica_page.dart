// ignore_for_file: lines_longer_than_80_chars

import 'package:fa_piano/core/utils/consts/app_colors.dart';
import 'package:fa_piano/core/utils/consts/app_decoration.dart';
import 'package:fa_piano/core/utils/consts/app_fonts.dart';
import 'package:fa_piano/core/widgets/custom_scaffold.dart';
import 'package:fa_piano/features/articles/view/articles_pages/components/body_text.dart';
import 'package:fa_piano/features/articles/view/articles_pages/components/info_block.dart';
import 'package:fa_piano/features/articles/view/articles_pages/components/marker_text.dart';
import 'package:fa_piano/features/articles/view/articles_pages/components/title_text.dart';
import 'package:fa_piano/features/articles/view/components/articles_app_bar.dart';
import 'package:fa_piano/features/articles/view/components/page_description.dart';
import 'package:fa_piano/features/articles/view/utils/styles.dart';
import 'package:fa_piano/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class DynamicaPage extends ConsumerWidget {
  const DynamicaPage({super.key});
  static void navigate(BuildContext context) => Navigator.push(
        context,
        MaterialPageRoute<void>(
          builder: (_) => const DynamicaPage(),
        ),
      );
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomScaffold(
      appBar: const ArticlesAppBar(
        showBackButton: true,
        navigationPoints: ['Пианизм', 'Динамика'],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PageDescription(
              child: RichText(
                text: TextSpan(
                  style: Styles.bodyText.copyWith(color: AppColors.onSurface),
                  children: [
                    TextSpan(
                      style: Styles.bodyTextBold
                          .copyWith(color: AppColors.onSurface),
                      text: '''Динамика ''',
                    ),
                    const TextSpan(
                      text:
                          '''- это количество звука, которое извлекает пианист. Способы ее применения очень обширны в исполнительстве и связаны со многими музыкальными задачами: с интонированием и выразительностью,  с фразировкой и ведением, со звуковым балансом и педализацией.''',
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
                  RichText(
                    text: TextSpan(
                      style: Styles.bodyText,
                      children: [
                        const TextSpan(
                          text: '''
     Под каждую образную, фразировочную, интонационную или калористическую задачу мы используем подходящий тип динамики:

''',
                        ),
                        TextSpan(
                          style: Styles.bodyTextBold,
                          text: '''     Микродинамика ''',
                        ),
                        const TextSpan(
                          text: '''
 - отражает саму природу инструмента, подразумевает изменения в количестве звука каждой конкретной ноты и никогда не указывается композиторами. Она определяет движение сюжетных линий разных действующих персонажей (мотивы и фразы), а также их внутренних переживаний и порывов души. (Интонирование и выразительность)
                              
''',
                        ),
                        TextSpan(
                          style: Styles.bodyTextBold,
                          text: '''     Крупная динамика ''',
                        ),
                        const TextSpan(
                          text: '''
- объединяет собой большие промежутки времени. Она может быть как постоянной - Forte, piano, так и постепенно изменяемой - dim,cresc. Крупная динамика определяет базовые эмоции и состояния определенного музыкального фрагмента и быстро погружает слушателя в образность. (Ее можно отнести к первому этапу формирования образности) Как правило, такая динамика указывается композитором в нотах.
                              
''',
                        ),
                        TextSpan(
                          style: Styles.bodyTextBold,
                          text: '''     В Крупной динамике ''',
                        ),
                        const TextSpan(
                          text:
                              '''мы воспринимаем среднее значение громкости нот за определенный промежуток времени. Она задает условные границы для фразировки и интонирования. Именно постоянное движение динамики отличает человека от машины.''',
                        ),
                      ],
                    ),
                  ),
                  const Gap(10),
                  Image.asset(AppImages.dynamicaImg1),
                  const Gap(10),
                  const BodyText('''
Итак, мы воспринимаем крупную динамику исходя из суммы всех нот, а ее уровнь поддерживается новыми звуками. Они либо сохраняют громкость вертикали, либо постепенно ее увеличивают/уменьшают.
                  
     При смене образности, эмоционального напряжения или его развития можно наблюдать постепенное cresc, а внезапное FF после P создаст заметные динамические градации.
                  '''),
                  const Gap(10),
                  Image.asset(AppImages.dynamicaImg2),
                  const Gap(10),
                  const BodyText('''
Если сравнить с живописью, то задача крупной динамики - подготовить фон, основные линии и направляющие для будущей картины. Детали, цвета и наполнение будут «закрашиваться» с помощью микродинамики.'''),
                  const Gap(10),
                  RichText(
                    text: TextSpan(
                      style: Styles.bodyText,
                      children: [
                        TextSpan(
                          style: Styles.bodyTextBold,
                          text: '''     Микродинамика ''',
                        ),
                        const TextSpan(
                          text: '''
- постоянно изменяющаяся величина звука. Она всегда присутствует в исполнительстве, но редко рассматривается как средство выразительности. Микродинамика - это исполнительское средство, необходимое для фразировкии и интонирования. Она позволяет решать множество музыкальных задач с особой плавностью, осознанностью, звучностью и выражается в каждой отдельной ноте или аккорде.
                              
''',
                        ),
                        const TextSpan(
                          text:
                              '''     При нажатии клавиши происходит динамический всплеск (атака, взятие), который постепенно угасает. Мы можем выделить 3 стадии жизни звука, которые возможно услышать: ''',
                        ),
                        TextSpan(
                          style: Styles.bodyTextBold,
                          text:
                              '''Динамический всплеск, середина и окончание звучания.''',
                        ),
                      ],
                    ),
                  ),
                  const Gap(10),
                  const InfoBlock(
                    text:
                        '''Слушать - означает отслеживать изменения, которые происходят в динамике звука и его краске.''',
                  ),
                  const Gap(10),
                  Image.asset(AppImages.dynamicaImg3),
                  const Gap(10),
                  const BodyText(
                    '''     В зависимости от длительностей, темпа, штриха, а также натренированности слуха мы можем успеть прослушать лишь одну или две стадии звука.''',
                  ),
                  Image.asset(AppImages.dynamicaImg4),
                  const Gap(10),
                  const BodyText('''
     Владение микродинамикой неразрывно связано с развитием определенного уровня слухового мастерства. Возможность отслеживать эти малейшие динамические колебания позволяет подстраивать каждый звук в зависимости от интонационных, фразировочных или красочных задач и развивать осознанную музыкальность.

Подробнее, мы раскроем возможности микродинамики в штрихах legato и nonlegato. (микродинамика для фразировки и интонирования)                      




     После того, как мы поняли, что каждую секунду нота меняется в своем звучании мы можем открыть и завесу тайны внутреннего слуха и внутреннего ведения.'''),
                  const Gap(10),
                  const TitleText('''Внутренний слух.'''),
                  const Gap(10),
                  const BodyText('''
     Кроме внешнего (объективного) уровня громкости существует и внутреннее его ощущение (субъективное). Пианист, благодаря внутреннему слуху, может представить желаемую динамику звука. К примеру, при естественном угасании ноты или аккорда, внутренний слух может воспринимать его на cresc и накапливать энергию.'''),
                  const Gap(10),
                  Image.asset(AppImages.dynamicaImg5),
                  const Gap(10),
                  const BodyText('''
     Новый звук получит достаточно энергии и будет органично воспринят слушателем'''),
                  const Gap(10),
                  Text('   Интересно!', style: AppFonts.regular20),
                  const Gap(15),
                  const MarkerText(
                    text:
                        '''В некоторых случаях обозначение динамики, к примеру piano, может говорить о характере эпизода. При этом мелодия может исполняться звонко на mF, ааккомпанемент на pp.''',
                  ),
                  const Gap(10),
                  Text('   Пример', style: AppFonts.regular20),
                  const Gap(10),
                  const MarkerText(
                    text:
                        '''Динамика зависит не только от силы, с которой пианист извлекает звук, но иот количества и длительности нот.Количество нот и их изменение в вертикали, к примеру увеличение ихплотности - естественным образом прибавляет и количество звука.Уменьшение количества нот - воспринимается тише..''',
                  ),
                  const Gap(10),
                  Text('   Пример', style: AppFonts.regular20),
                  const Gap(10),
                  const MarkerText(
                    text:
                        '''Также, короткие одиночные шестнадцатые звучат значительно меньше повремени и звук не успевает полностью раскрыться в сравнении с болеемедленными восьмыми или четвертями. Такую особенность можно частовстретить в скачках.''',
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

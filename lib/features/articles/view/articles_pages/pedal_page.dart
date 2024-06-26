// ignore_for_file: lines_longer_than_80_chars

import 'package:fa_piano/core/utils/consts/app_decoration.dart';
import 'package:fa_piano/core/widgets/widgets.dart';
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

class PedalPage extends ConsumerWidget {
  const PedalPage({super.key});
  static void navigate(BuildContext context) => Navigator.push(
        context,
        MaterialPageRoute<void>(
          builder: (_) => const PedalPage(),
        ),
      );
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomScaffold(
      appBar: const ArticlesAppBar(
        showBackButton: true,
        navigationPoints: ['Пианизм', 'Педаль'],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const PageDescription(
              text: '''
Педаль - можно назвать инструментом в инструменте.

Сама по себе она не может существовать, но вместе с роялем полностью преображает природу его звучания.
Педаль открывает для пианиста возможность играть на «открытых струнах», когда удар молотка заставляет вибрировать не только струны своей клавиши, но также и всех соседних.''',
            ),
            Padding(
              padding: AppDecoration.padding.copyWith(top: 20, bottom: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BodyText('''
     Педаль для одного звука - это способ окрасить его, придать большую выразительность за счет колебания соседних струн. Такая особенность позволяет иначе взглянуть на природу звука при множестве нот.'''),
                  const Gap(10),
                  const BodyText('''
     Итак, когда мы используем педаль для нескольких нот, то происходит наслоение одного звука на другой. На примере двух  нот мы видим, как второй звук ложится поверх первого. Нота теряет свою чистоту и становится частью созвучия, в котором смешиваются колебания разных звуков.'''),
                  const Gap(15),
                  Image.asset(AppImages.pedalImg1),
                  const Gap(15),
                  RichText(
                    text: TextSpan(
                      style: Styles.bodyText,
                      text: '      Важно понять, что ',
                      children: [
                        TextSpan(
                          style: Styles.bodyTextBold,
                          text:
                              'педаль определяет только ноты, из которых будет образовано созвучие, ',
                        ),
                        TextSpan(
                          style: Styles.bodyText,
                          text:
                              ' а исполнителю необходимо создать его наполнение - сбалансировать разные колебания и тембры звуков таким образом, чтобы передать желаемую образность. Поиск баланса в наполнении созвучия зависит от акустики помещения, динамики, длительностей, ритма, взятия и штриха. ',
                        ),
                      ],
                    ),
                  ),
                  const Gap(15),
                  const TitleText('Динамика и длительности.'),
                  const Gap(10),
                  const BodyText('''
     Главную роль в наполнении созвучия играет динамика звука. Она изменяется с течением времени и зависит не только от исполнителя, но также и от длительности ноты.
     При половинных длительностях и одинаковой громкости первый звук успевает значительно угаснуть, а его соотношение в созвучии будет минимальным.'''),
                  const Gap(15),
                  Image.asset(AppImages.pedalImg2),
                  const Gap(15),
                  const BodyText(
                      '''Однако, если вторая нота будет тише, то созвучие может стать выраженным и вместить в себя тембры и обертоны от обеих нот.'''),
                  const Gap(15),
                  Image.asset(AppImages.pedalImg3),
                  const Gap(15),
                  const BodyText('''
     При ускорении длительностей смешение звуков происходит более активным образом. Первый звук не успеет угаснуть даже в piano и при одинаковой громкости, созвучие может быть равномерно наполнено колебаниями от обеих нот.'''),
                  const Gap(15),
                  Image.asset(AppImages.pedalImg4),
                  const Gap(15),
                  const BodyText('''
     Если вторая нота громче первой, то наполнение созвучия почти всегда можно представить следующим образом:'''),
                  const Gap(15),
                  Image.asset(AppImages.pedalImg5),
                  const Gap(15),
                  const InfoBlock(
                    text: '''
     В первую очередь, пианист может повлиять на соотношение частот звуков в созвучии через динамику. При этом нужно учитывать и естественные ее изменения, опираясь на длительности нот и акустику помещения.
     Перечисленные нюансы могут создать множество вариантов соотношений звуков в созвучии.''',
                  ),
                  const Gap(15),
                  const TitleText('Высота и регистр.'),
                  const Gap(15),
                  const BodyText('''
     Мы рассмотрели, как из отдельных нот формируются созвучия. Однако взаимодействия созвучий имеют свои особенности. '''),
                  RichText(
                    text: TextSpan(
                      style: Styles.bodyText,
                      children: [
                        TextSpan(
                          style: Styles.bodyTextBold,
                          text:
                              'Близкие по высоте звуки смешиваются быстрее - они схожи по тембру, атаке и длине волны.',
                        ),
                        TextSpan(
                          style: Styles.bodyText,
                          text:
                              ' Как результат, отдельные созвучия нот смешиваются, группируются в локальные созвучия баса или мелодии.',
                        ),
                      ],
                    ),
                  ),
                  const Gap(15),
                  Image.asset(AppImages.pedalImg6),
                  const Gap(15),
                  const BodyText('''
     Другими словами, хорошо различимые на слух созвучия достаточно быстро создают звуковой фон в каждом регистре. Фон баса, фон средних голосов и мелодии образуют многослойность в музыкальной ткани, которая придает звучанию объем.'''),
                  const Gap(15),
                  Image.asset(AppImages.pedalImg7),
                  const Gap(15),
                  RichText(
                    text: TextSpan(
                      style: Styles.bodyText,
                      children: [
                        TextSpan(
                          style: Styles.bodyText,
                          text:
                              'Звонкие верхние звуки быстрее угасают и спустя время сравниваются с более медленным басовым фоном. Момент их уравнивания можно обозначить как образование',
                        ),
                        TextSpan(
                          style: Styles.bodyTextBold,
                          text: ' звукового облака. ',
                        ),
                        TextSpan(
                          style: Styles.bodyText,
                          text:
                              'Это новое состояние звука, в котором все ноты звучат как единое тело, без четкого разделения на регистры. Как можно понять, звуковое облако формируется достаточно долго и в практике встречается редко. Его образность можно описать, как гармонический шум.',
                        ),
                      ],
                    ),
                  ),
                  const Gap(15),
                  Image.asset(AppImages.pedalImg8),
                  const Gap(15),
                  InfoBlock(
                    child: Column(
                      children: [
                        const BodyText('''
     Итак, наполнение педали постоянно меняется и не бывает однородным. 
     В ее многослойность входят:'''),
                        MarkerText(
                          richText: RichText(
                            text: TextSpan(
                              style: Styles.bodyText,
                              children: [
                                TextSpan(
                                  style: Styles.bodyTextBold,
                                  text: 'Новые звуки, ',
                                ),
                                TextSpan(
                                  style: Styles.bodyText,
                                  text: 'которые ясно различимы;',
                                ),
                              ],
                            ),
                          ),
                        ),
                        MarkerText(
                          richText: RichText(
                            text: TextSpan(
                              style: Styles.bodyText,
                              children: [
                                TextSpan(
                                  style: Styles.bodyTextBold,
                                  text: 'Созвучия ',
                                ),
                                TextSpan(
                                  style: Styles.bodyText,
                                  text:
                                      'или звуки, утратившие свою динамическую выразительность;',
                                ),
                              ],
                            ),
                          ),
                        ),
                        MarkerText(
                          richText: RichText(
                            text: TextSpan(
                              style: Styles.bodyText,
                              children: [
                                TextSpan(
                                  style: Styles.bodyTextBold,
                                  text: 'Фоны регистров ',
                                ),
                                TextSpan(
                                  style: Styles.bodyText,
                                  text:
                                      'или созвучия, утратившие свою тембровую индивидуальность;',
                                ),
                              ],
                            ),
                          ),
                        ),
                        MarkerText(
                          richText: RichText(
                            text: TextSpan(
                              style: Styles.bodyText,
                              children: [
                                TextSpan(
                                  style: Styles.bodyTextBold,
                                  text: 'Звуковое облако ',
                                ),
                                TextSpan(
                                  style: Styles.bodyText,
                                  text: 'или гармонический шум.',
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Gap(15),
                  RichText(
                    text: TextSpan(
                      style: Styles.bodyText,
                      children: [
                        TextSpan(
                          style: Styles.bodyText,
                          text:
                              '     Теперь, когда мы понимаем разные состояния педали, то ',
                        ),
                        TextSpan(
                          style: Styles.bodyTextBold,
                          text:
                              'можем через динамику “встраивать” новые звуки в любое состояние педали, ',
                        ),
                        TextSpan(
                          style: Styles.bodyText,
                          text: 'добиваясь необходимой образности.',
                        ),
                      ],
                    ),
                  ),
                  const Gap(15),
                  const TitleText('Взаимодействия созвучий.'),
                  const Gap(15),
                  RichText(
                    text: TextSpan(
                      style: Styles.bodyText,
                      children: [
                        TextSpan(
                          style: Styles.bodyText,
                          text: '      Созвучия ',
                        ),
                        const TextSpan(
                          text: 'и ',
                        ),
                        TextSpan(
                          style: Styles.bodyText,
                          text: 'фоны регистров ',
                        ),
                        const TextSpan(
                          text: '''
важны для многослойного звучания музыки, они помогают создать необходимый мелодический или гармонический фон. 
     Чаще всего ''',
                        ),
                        TextSpan(
                          style: Styles.bodyTextBold,
                          text: 'педаль служит мелодии. ',
                        ),
                        const TextSpan(
                          text: '''
                  Это значит, что мы пристраиваем динамику нот баса таким образом, чтобы их созвучия как можно быстрее создавали фон (становились неразличимы). Таким образом мы оставляем место для мелодии, чтобы каждый ее новый звук смог занять основной объем и дополнительно окраситься за счет угасающего тембра баса. ''',
                        ),
                        TextSpan(
                          style: Styles.bodyTextBold,
                          text:
                              'Иными словами, показываем мелодию с помощью динамики.',
                        ),
                      ],
                    ),
                  ),
                  const Gap(15),
                  Image.asset(AppImages.pedalImg9),
                  const Gap(15),
                  RichText(
                    text: TextSpan(
                      style: Styles.bodyText,
                      children: [
                        const TextSpan(
                          text:
                              '      Динамика - это первоочередное средство, которое показывает мелодию в многослойности звуков. Другой важной характеристикой служит тембр, высота звуков и их ритм. ',
                        ),
                        TextSpan(
                          style: Styles.bodyTextBold,
                          text: '\n      Когда педаль служит гармонии,  ',
                        ),
                        TextSpan(
                          style: Styles.bodyText,
                          text:
                              'то гармонический фон занимает основной объем звука. В этом случае мелодические ноты начинают выделяться за счет отличающегося тембра и длительностей. ',
                        ),
                      ],
                    ),
                  ),
                  const Gap(15),
                  Image.asset(AppImages.pedalImg10),
                  const Gap(15),
                  const BodyText('''
     Значение динамики и тембра во влиянии педали на звук сложно переоценить. Они не только создают два основных пласта звуков, но также дают свободу в определении конкретных нот к фону или мелодии.
     К примеру, чтобы выделить мелодический звук баса в басовом фоне мы играем его громче чтобы внедрить в мелодию
                  
     Дополнение
     Иногда лаконичный баланс звукового облака нарушается диссонансным звуком. Привычно в этот момент сменить педаль. Однако, не всегда это возможно. Следующий консонанс способен «очистить» наполнение. Изменить баланс грязи. Наполнение из разных тембров, динамики и высоты звуков может быть как однородным(консонансным), так и разнородным(диссонансным), в зависимости от взаимодействий и баланса.'''),
                  const Gap(15),
                  Image.asset(AppImages.pedalImg11),
                  const Gap(15),
                  const BodyText('''
     Остаточное звучание основано на принципе взаимодействия звуковых волн. Стечением времени, абертоновые волны усиливаются, а диссонирующие гаснут. Так, пространство заполняется гармоническим шумом, который служит"подушкой" для новых звуков.
     
     Новые звуки усиливают данный эффект в результате которого в пространстве можно различить их в виде гармонического шума. Колебания басовых струн могут резонировать с мелодическими звуками и тем самым продлевать их звучание.'''),
                  const Gap(15),
                  const TitleText('Вывод.'),
                  const Gap(15),
                  const BodyText('''
     Педальное звучание не ограничивается понятиями «громче» и «дольше». Это колористический инструмент, который позволяет выстроить общий баланс звучания и лучшим образом раскрыть выразительность музыки.'''),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

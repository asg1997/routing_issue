// ignore_for_file: lines_longer_than_80_chars

import 'package:fa_piano/core/utils/consts/app_decoration.dart';
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

class LigiPage extends ConsumerWidget {
  const LigiPage({super.key});
  static void navigate(BuildContext context) => Navigator.push(
        context,
        MaterialPageRoute<void>(
          builder: (_) => const LigiPage(),
        ),
      );
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomScaffold(
      appBar: const ArticlesAppBar(
        showBackButton: true,
        navigationPoints: ['Пианизм', 'Лиги'],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const PageDescription(
              text: '''
Каждый нюанс звука занимает уникальное место в нотном тексте. Благодаря особенностям legato, мы можем понять его смысл для композитора и предельно точно его исполнить. 
Штрих от немец. - черта, особенность.''',
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
     Звуки связаны линиями из мотивов и фраз. Композитор выделяет наиболее значимые для него моменты, указывая для них обозначение штриха.  Образная составляющая фраз и штрих, которым она исполняется являются одним целым, однако имеют свое собственное значение в нотном тексте:
''',
                        ),
                        TextSpan(
                          style: Styles.bodyTextBold,
                          text:
                              '''     Штрих указывает только на физиологическую сторону игры: ''',
                        ),
                        const TextSpan(
                          text: '''
взятие, передачу веса пальцев и другие особенности движения руки. Это определяет продолжительность звука, его остроту или плавность, легкость или тяжеловестность.
''',
                        ),
                        TextSpan(
                          style: Styles.bodyTextBold,
                          text:
                              '''     Мотив и фраза - это выражение музыкальной мысли композитора, ''',
                        ),
                        const TextSpan(
                          text: '''
 в них заключена драма его персонажей. Как у любой мысли, они имеют начало, развитие и конец. 
     Чтобы объединить технику взятия с определенной мыслью, мы используем возможности микродинамики. Так штрих приобретает динамическую индивидуальность, становится частью выразительности конкретного мотива или фразы.
''',
                        ),
                      ],
                    ),
                  ),
                  const TitleText('Лиги и legato, границы мышления'),
                  const Gap(10),
                  const BodyText(
                    '''     Лига относится к особенным обозначением в тексте. Она относится к множеству звуков, объединяет их по принципу взятия, соединения, а также обладает границами: имеет начало, середину и конец. Все перечисленное помогло композиторам указывать с их помощью на мотивный, интонационный сюжет.''',
                  ),
                  const Gap(10),
                  const InfoBlock(
                    text:
                        '''Лиги обозначают одновременно и технику исполнения (штрих легато) и мотивные, фразировачные границы.''',
                  ),
                  const Gap(10),
                  const BodyText(
                    '''
     Рассмотрим основные варианты лиг на примере сонаты Моцарта и ответим на вопрос: для чего в едином штрихе легато, композитор пишет разные лиги?
     В первом примере оба такта исполняются штрихом легато, однако композитор ставит две раздельные лиги. Таким образом, он выделяет их в две противоположные и самостоятельные мысли.''',
                  ),
                  const Gap(10),
                  Image.asset(AppImages.ligiImg1),
                  const Gap(10),
                  const BodyText('''
     В следующем примере мы видим похожее последовательное движение нот, однако движение мелодии создает интонационно однородную мысль. Композитор ставит единую лигу на оба такта, мы воспринимаем их цельной фразой, единым порывом взлета и падения.'''),
                  const Gap(10),
                  Image.asset(AppImages.ligiImg2),
                  const Gap(10),
                  const BodyText('''
     Можно вспомнить и другой пример, в котором лига объединяет сразу 4 такта. Здесь композитор  указывает на однородное стремление мелодии вниз. Его цель - перейти из верхнего регистра в нижний, сохранив безостановочное движение к тонике.'''),
                  const Gap(10),
                  Image.asset(AppImages.ligiImg3),
                  const Gap(10),
                  const BodyText(
                    '''
     Если рассматривать мелодию темы, то можно наблюдать сразу оба варианта расстановки лиг. Мотив первого такта повторяется и во втором. Это две короткие музыкальные мысли и композитор разделяет их лигами «а» и «b». В третьем и четвертом такте образуется фраза, мотивы находят в ней свое развитие: композитор ставит единую лигу «с».''',
                  ),
                  const Gap(10),
                  Image.asset(AppImages.ligiImg4),
                  const Gap(10),
                  RichText(
                    text: TextSpan(
                      style: Styles.bodyText,
                      children: [
                        const TextSpan(
                          text: '''     Итак, ''',
                        ),
                        TextSpan(
                          style: Styles.bodyTextBold,
                          text:
                              ''' композитор расставляет лиги в соответствии с музыкальными мыслями - мотивами и фразами, ''',
                        ),
                        const TextSpan(
                          text: '''
а иногда и целыми предложениями. Мы сразу замечаем в тексте их начало, развитие и конец, а также можем передать это «зрительное восприятие» через звук, используя микродинамику звуков. 
                              ''',
                        ),
                        const TextSpan(
                          text: '''

Интересно! 
В одном месте невозможно написать разные лиги, поэтому композитор выбирает наиболее значимые.
К примеру, в теме или мелодии указывает мотивные, интонационные лиги, а в фактурных местах наиболее важно указать на непрерывность движения - так появляются длинные фразировочные лиги.''',
                        ),
                      ],
                    ),
                  ),
                  const Gap(15),
                  const TitleText('Развитие, образность и микродинамика'),
                  const Gap(10),
                  RichText(
                    text: TextSpan(
                      style: Styles.bodyText,
                      children: [
                        const TextSpan(
                          text:
                              '''     Мы можем указать на начало и конец музыкальной мысли, повторяя привычные принципы речи или пения: ''',
                        ),
                        TextSpan(
                          style: Styles.bodyTextBold,
                          text:
                              '''первая нота под лигой будет всегда опорной, ''',
                        ),
                        const TextSpan(
                          text: '''
она привлекает внимание слушателя. ''',
                        ),
                        TextSpan(
                          style: Styles.bodyTextBold,
                          text:
                              '''Окончание мотива, его последняя нота смягченная, филируемая. ''',
                        ),
                        const TextSpan(
                          text: '''
Благодаря этому и появляется движение музыки: от начала к концу. Такой принцип касается лиг любой протяжённости и не связан с метрической системой записи (с долями в такте).''',
                        ),
                      ],
                    ),
                  ),
                  const Gap(10),
                  Image.asset(AppImages.ligiImg5),
                  const Gap(10),
                  RichText(
                    text: TextSpan(
                      style: Styles.bodyText,
                      children: [
                        const TextSpan(
                          text:
                              '''     Движение от опорного звука к филируемому, соотношение их громкости можно представить себе на ''',
                        ),
                        TextSpan(
                          style: Styles.bodyTextBold,
                          text: '''вилочке >. ''',
                        ),
                        const TextSpan(
                          text:
                              '''Вилочка подразумевает общую динамику для лиги.''',
                        ),
                      ],
                    ),
                  ),
                  const Gap(10),
                  Image.asset(AppImages.ligiImg11),
                  const Gap(10),
                  RichText(
                    text: TextSpan(
                      style: Styles.bodyText,
                      children: [
                        const TextSpan(
                          text:
                              '''     Также, движение от опорного звука к филируемому можно сформировать в ''',
                        ),
                        TextSpan(
                          style: Styles.bodyTextBold,
                          text: '''dim. ''',
                        ),
                        const TextSpan(
                          text:
                              '''Такое представление подразумевает бóльшую выразительность, а следовательно разница между динамикой первого и последнего звука может составлять от F к p. Такая градация будет относится только к одной лиге и затрагивать только ее последние ноты. ''',
                        ),
                      ],
                    ),
                  ),
                  const Gap(10),
                  Image.asset(AppImages.ligiImg6),
                  const Gap(10),
                  RichText(
                    text: TextSpan(
                      style: Styles.bodyText,
                      children: [
                        TextSpan(
                          style: Styles.bodyTextBold,
                          text: '''     Рисунок мелодики ''',
                        ),
                        const TextSpan(
                          text:
                              ''' - это еще одна важная составляющая лиги. В средних и длинных фразировочных лигах можно часто выделить ноту-притяжения (“акцент” - это микрокульминация). Мы можем ее выразить с помощью внутренней микродинамики лиги.''',
                        ),
                      ],
                    ),
                  ),
                  const Gap(10),
                  Image.asset(AppImages.ligiImg7),
                  const Gap(10),
                  InfoBlock(
                    child: RichText(
                      text: TextSpan(
                        style: Styles.bodyText,
                        children: [
                          TextSpan(
                            style: Styles.bodyTextBold,
                            text: '''     Микродинамика ''',
                          ),
                          const TextSpan(
                            text: '''
внутри лиги позволяет нам наилучшим образом выразить ее интонирование. 
''',
                          ),
                          TextSpan(
                            style: Styles.bodyTextBold,
                            text: '''     Интенсивность ''',
                          ),
                          const TextSpan(
                            text:
                                '''выбирается для каждой лиги исходя из ее длины, мелодического рисунка и образной выразительности.''',
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Gap(10),
                  const TitleText('Внутреннее развитие и связь лиг'),
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
     В соединении одной лиги с другой значение опорного звука и филируемого меняется.
''',
                        ),
                        TextSpan(
                          style: Styles.bodyTextBold,
                          text: '''     Опорный звук  ''',
                        ),
                        const TextSpan(
                          text:
                              '''остается значимым для развития к “кульминации” внутри лиги, в то время как ''',
                        ),
                        TextSpan(
                          style: Styles.bodyTextBold,
                          text: '''филируемый звук ''',
                        ),
                        const TextSpan(
                          text:
                              '''участвует в сопоставлении со следующим опорным звуком.''',
                        ),
                      ],
                    ),
                  ),
                  Image.asset(AppImages.ligiImg8),
                  const Gap(10),
                  const BodyText('''
     После внутреннего развития к ноте притяжения, кульминации, наш слух уже забывает звучание первой опорной ноты. Поэтому, при окончании такой лиги и переходе к следующей, мы подстраиваем динамику опорного звука в зависимости от сфилированного. 
Слушатель не знает, в какой момент закончится музыкальная мысль, он осознает ее конец только с момента наступления новой опоры. (постфактум)
К примеру, если первая нота новой лиги взята с достаточной опорой или даже акцентирована, то слушатель осознает предшествующий ей звук мягче и следовательно, воспримет его как окончание.
'''),
                  const Gap(10),
                  Image.asset(AppImages.ligiImg9),
                  const Gap(10),
                  RichText(
                    text: TextSpan(
                      style: Styles.bodyText,
                      children: [
                        const TextSpan(
                          text:
                              '''     Главным образом, эта новая связь позволяет нам делать ''',
                        ),
                        TextSpan(
                          style: Styles.bodyTextBold,
                          text: '''cresc к концу лиги, ''',
                        ),
                        const TextSpan(
                          text:
                              '''остается значимым для развития к “кульминации” внутри лиги, в то время как ''',
                        ),
                        const TextSpan(
                          text:
                              '''не нарушая общих принципов микродинамики лиг.''',
                        ),
                      ],
                    ),
                  ),
                  const Gap(10),
                  Image.asset(AppImages.ligiImg10),
                  const Gap(10),
                  RichText(
                    text: TextSpan(
                      style: Styles.bodyText,
                      children: [
                        TextSpan(
                          style: Styles.bodyTextBold,
                          text: '''Лиги ''',
                        ),
                        const TextSpan(
                          text:
                              '''указывают нам на микродинамику начала и конца мысли: ''',
                        ),
                        TextSpan(
                          style: Styles.bodyTextGold,
                          text: '''опорный звук ''',
                        ),
                        const TextSpan(
                          text: '''и ''',
                        ),
                        TextSpan(
                          style: Styles.bodyTextGold,
                          text: '''филируемый. ''',
                        ),
                        const TextSpan(
                          text: '''\n- создают движение.''',
                        ),
                        TextSpan(
                          style: Styles.bodyTextBold,
                          text: '''\nРисунок мелодики ''',
                        ),
                        const TextSpan(
                          text:
                              '''указывает нам на внутреннюю микродинамику: ''',
                        ),
                        TextSpan(
                          style: Styles.bodyTextGold,
                          text: '''вилочки, dim, cresc. ''',
                        ),
                        const TextSpan(
                          text: '''\n- создают развитие.''',
                        ),
                      ],
                    ),
                  ),
                  const Gap(10),
                  const InfoBlock(
                    text:
                        'Если движение от опорного звука к филируемому воспринимается только последовательно, то связь последнего звука лиги и первого следующей лиги может восприниматься постфактум.',
                  ),
                  const Gap(10),
                  const TitleText('Интересно!'),
                  const Gap(10),
                  const BodyText(
                    '''     Лиги в правой и левой руке чаще всего не совпадают. Это даёт возможность пианисту смягчить конец лиги в правой руке, при этом начать или продолжить развитие голоса в левой руке. Так сохраняется ведение и непрерывное движение музыкальной мысли, создаётся бесшовное течение музыки.''',
                  ),
                  const MarkerText(
                    text:
                        '''Бывает такое, что не удается аккуратно пристроить по звучанию окончание лиги, тогда можно схитрить и сыграть опорный звук «громче». Так, будет слышно начало следующего мотива или фразы и при этом по сравнению с новой опорой прошлый, не совсем удавшийся конец все равно воспримется тише.''',
                  ),
                  const Gap(10),
                  const TitleText('Повторение!'),
                  const Gap(10),
                  const BodyText(
                    '''     Лигу и легато составляют:''',
                  ),
                  const MarkerText(
                    text: '''Плавное соединение пальцев. ''',
                  ),
                  const MarkerText(
                    text: '''Фразировочная и интонационная микродинамика.''',
                  ),
                  const MarkerText(
                    text:
                        '''Микро-кульминация отдельной мысли, фразы, которая может возникнутьв зависимости от длины лиги и рисунка мелодики.''',
                  ),
                  const Gap(10),
                  const BodyText(
                    '''     Как это работает?''',
                  ),
                  const MarkerText(
                    text:
                        '''Микродинамика позволяет нам передать границы мыслей композитора, сформировать мотивы, фразы и предложения, а также выстроить в них ведение развитие.''',
                  ),
                  const MarkerText(
                    text:
                        '''Интонирование микро-кульминации или ноты-притяжения в лиге помогает нам до конца раскрыть ее выразительность.''',
                  ),
                  const MarkerText(
                    text:
                        '''Плавное соединение пальцев в этом представлении собирает отдельные ноты воедино только на начальном уровне. Это можно сравнить с тем, как в словах стоят рядом буквы. Кроме того, соединение пальцев мы можем имитировать педалью, при этом уделив больше внимания звукоизвлечению.''',
                  ),
                  const Gap(10),
                  const BodyText(
                    '''Такое разнообразие составляющих делает лигу и легато одним из самых насыщенных и сложных для контроля штрихов. ''',
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

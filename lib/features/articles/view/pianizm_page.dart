import 'package:fa_piano/core/utils/consts/app_colors.dart';
import 'package:fa_piano/core/utils/consts/app_decoration.dart';
import 'package:fa_piano/core/utils/consts/app_fonts.dart';
import 'package:fa_piano/core/widgets/custom_scaffold.dart';
import 'package:fa_piano/features/articles/view/articles_pages/dynamica_page.dart';
import 'package:fa_piano/features/articles/view/articles_pages/ligi_page.dart';
import 'package:fa_piano/features/articles/view/articles_pages/non_legato_page.dart';
import 'package:fa_piano/features/articles/view/articles_pages/obraznost_page.dart';
import 'package:fa_piano/features/articles/view/articles_pages/pedal_page.dart';
import 'package:fa_piano/features/articles/view/components/articles_app_bar.dart';
import 'package:fa_piano/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class PianizmPage extends ConsumerWidget {
  const PianizmPage({super.key});
  static void navigate(BuildContext context) => Navigator.push(
        context,
        MaterialPageRoute<void>(
          builder: (_) => const PianizmPage(),
        ),
      );
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const CustomScaffold(
      appBar: ArticlesAppBar(
        navigationPoints: ['Пианизм'],
        showBackButton: true,
      ),
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(20),
              _GeneralTerms(),
              Gap(20),
              _HeaderWidget('Темпы'),
              _TermsDictListWidget('Медленные 40-65', _termsSlow),
              Gap(5),
              _TermsDictListWidget('Умеренные 65-100', _termsMedium),
              Gap(5),
              _TermsDictListWidget('Быстрые 120-180', _termsFast),
              Gap(20),
              _HeaderWidget('Словарь'),
              Gap(5),
              _TermsDictListWidget(null, _dict),
              Gap(30),
            ],
          ),
        ),
      ),
    );
  }
}

class _GeneralTerms extends ConsumerWidget {
  const _GeneralTerms();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: AppDecoration.padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Основные понятия',
            style: AppFonts.medium20,
          ),
          GridView(
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.only(top: 20),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 21,
              mainAxisSpacing: 20,
              childAspectRatio: 170 / 56,
            ),
            children: [
              _TermWidget(
                text: 'образность',
                image: AppImages.obraznost,
                onTap: () => ObraznostPage.navigate(context),
              ),
              _TermWidget(
                text: 'динамика',
                image: AppImages.dynamicaIc,
                onTap: () => DynamicaPage.navigate(context),
              ),
              _TermWidget(
                text: 'лиги/legato',
                image: AppImages.ligiIc,
                onTap: () => LigiPage.navigate(context),
              ),
              _TermWidget(
                text: 'педаль',
                image: AppImages.pedalIc,
                onTap: () => PedalPage.navigate(context),
              ),
              _TermWidget(
                text: 'non legato',
                image: AppImages.nonLegatoIc,
                onTap: () => NonLegatoPage.navigate(context),
              ),
              _TermWidget(text: 'soon', image: AppImages.soon, onTap: () {}),
              _TermWidget(
                text: 'staccato',
                image: AppImages.staccatoIc,
                onTap: () {},
              ),
              _TermWidget(text: 'soon', image: AppImages.soon2Ic, onTap: () {}),
            ],
          ),
        ],
      ),
    );
  }
}

class _TermWidget extends ConsumerWidget {
  const _TermWidget({
    required this.text,
    required this.image,
    required this.onTap,
  });
  final String text;
  final String image;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color(0xFFD3CDF3),
        ),
        child: LayoutBuilder(
          builder: (_, constraints) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: const Color(0xFFD3CDF3),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: constraints.maxWidth * .34,
                    child: Image.asset(image),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(left: 11, right: 5),
                      height: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: const Color(0xFFD9D9D9),
                      ),
                      child: Text(text, overflow: TextOverflow.ellipsis),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class _HeaderWidget extends ConsumerWidget {
  const _HeaderWidget(this.title);
  final String title;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: const Color(0xFFD3CDF3),
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 11,
      ),
      width: double.infinity,
      child: Text(
        title,
        style: AppFonts.medium20,
      ),
    );
  }
}

class _TermsDictListWidget extends ConsumerWidget {
  const _TermsDictListWidget(this.title, this.items);
  final String? title;
  final Map<String, String> items;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: AppDecoration.padding.copyWith(top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null) ...[
            Text(title!, style: AppFonts.medium14),
            const Gap(5),
          ],
          ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            itemBuilder: (_, index) => _DictTermWidget(
              items.keys.toList()[index],
              items.values.toList()[index],
            ),
            separatorBuilder: (_, __) => const Gap(10),
            itemCount: items.length,
          ),
        ],
      ),
    );
  }
}

class _DictTermWidget extends ConsumerWidget {
  const _DictTermWidget(this.term, this.description);
  final String term;
  final String description;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.205,
          child: Text(
            term,
            style: AppFonts.regular14.copyWith(height: 1),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const Gap(10),
        Container(
          width: MediaQuery.of(context).size.width * 0.12,
          height: 1,
          color: AppColors.secondary.withOpacity(.2),
        ),
        const Gap(10),
        Expanded(
          flex: 2,
          child: Text(
            description,
            style: AppFonts.regular14,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}

const _termsSlow = {
  'Grave': 'медленно, тяжеловесно',
  'Larghissimo': 'торжественно, важно',
  'Largo': 'величественно, широко',
  'Lentissimo': 'очень медленно',
  'Lento': 'медленно, протяжно',
  'Adagio': 'весьма спокойно, плавно',
  'Adagietto': 'медленно, активнее adagio',
  'Con moto': 'с движением',
};

const _termsMedium = {
  'Andante': 'не спеша, спокойно',
  'Andantino': 'неторопливо',
  'Sostenuto': 'сдержанно',
  'Moderato': 'умеренно, средне',
  'Allegretto': 'оживленно',
};
const _termsFast = {
  'Grave': 'медленно, тяжеловесно',
  'Larghissimo': 'торжественно, важно',
  'Largo': 'величественно, широко',
  'Lentissimo  ': 'очень медленно',
  'Lento ': 'медленно, протяжно',
  'Adagio': 'весьма спокойно, плавно',
  'Adagietto': 'медленно, активнее adagio',
  'Con moto': 'с движением',
};

const _dict = {
  'Adirato ': 'гневно',
  'Agitato': 'взволнованно',
  'Con amore': 'с любовью',
  'Adirato': 'гневно',
  'Appassionato': 'с любовью',
  'Brillante': 'блестяще, виртуозно',
  'Cantabile': 'певуче',
  'Comodo': 'непринужденно',
  'Con brio': 'с жаром, возбужденно',
  'Con fuoco': 'с огнём',
  'Con tutta forze': 'со всей силы',
  'Con moto': 'с движением',
  'Deciso': 'смело, решительно',
  'Dolce ': 'нежно',
  'Doloroso': 'печально, горестно',
  'Espressivo': 'выразительно',
  'Giocoso': 'игриво',
  'Grazioso': 'грациозно, изящно',
  'Grottesco': 'причудливо, фантастично',
  'Impetuoso': 'стремительно, с натиском',
  'Lamentoso': 'жалобно',
  'Leggiero': 'легко',
  'Lugubre': 'скорбно, мрачно',
  'Maestoso': 'торжественно, величественно',
  'Marciale': 'в характере марша',
  'Misterioso': 'таинственно',
  'Pesante': 'тяжело, твердо',
  'Scherzando': 'шутливо',
  'Secco': 'сухо',
  'Semplice': 'просто, естественно',
  'Sonore': 'звучно, звонко',
  'Sospirando': 'вздыхая',
  'Sotto voce': 'вполголоса',
  'Tranquillo': 'спокойно, умиротворённо',
  'Guasi mormorando': 'как бы шепча, бормоча',
};

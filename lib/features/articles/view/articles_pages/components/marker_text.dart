import 'package:fa_piano/core/utils/consts/app_colors.dart';
import 'package:fa_piano/features/articles/view/articles_pages/components/body_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MarkerText extends ConsumerWidget {
  const MarkerText({
    this.text,
    this.richText,
    this.color = AppColors.secondary,
    super.key,
  }) : assert(
          text != null || richText != null,
          'text or richText must be not null',
        );
  final String? text;
  final RichText? richText;
  final Color color;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BodyText('•  ', color: color),
        Expanded(
          child: text != null ? BodyText(text!, color: color) : richText!,
        ),
      ],
    );
  }
}

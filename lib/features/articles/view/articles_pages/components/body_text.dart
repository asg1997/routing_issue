import 'package:fa_piano/core/utils/consts/app_colors.dart';
import 'package:fa_piano/features/articles/view/utils/styles.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BodyText extends ConsumerWidget {
  const BodyText(this.text, {this.color = AppColors.secondary, super.key});
  final String text;
  final Color color;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Text(text, style: Styles.bodyText.copyWith(color: color));
  }
}

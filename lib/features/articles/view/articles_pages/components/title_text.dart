import 'package:fa_piano/features/articles/view/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TitleText extends ConsumerWidget {
  const TitleText(this.text, {super.key});
  final String text;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Text(text, style: Styles.title),
    );
  }
}

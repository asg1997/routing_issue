import 'package:fa_piano/features/articles/view/utils/styles.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class InfoBlock extends ConsumerWidget {
  const InfoBlock({this.text, this.child, super.key})
      : assert(
          text != null || child != null,
          'text or richText must be not null',
        );
  final String? text;
  final Widget? child;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(0xFFD3D3D3),
      ),
      child: text != null ? Text(text!, style: Styles.bodyText) : child,
    );
  }
}

import 'package:fa_piano/core/widgets/loading_widget.dart';
import 'package:fa_piano/features/launch/view/controllers/launch_controller.dart';
import 'package:fa_piano/features/nav_bar/view/nav_bar_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LaunchPage extends ConsumerWidget {
  const LaunchPage({super.key});
  static String name = 'launch_page';
  static String path = '/';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(launchControllerProvider, (_, state) {
      state.whenOrNull(
        auth: () => NavbarPage.navigate(context),
      );
    });
    return const Scaffold(body: Center(child: LoadingWidget()));
  }
}

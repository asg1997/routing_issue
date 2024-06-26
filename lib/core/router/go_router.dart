import 'package:fa_piano/features/articles/view/articles_tab.dart';
import 'package:fa_piano/features/articles/view/masterstvo_1_page.dart';
import 'package:fa_piano/features/articles/view/masterstvo_2_page.dart';
import 'package:fa_piano/features/home/view/home_tab.dart';
import 'package:fa_piano/features/launch/view/launch_page.dart';
import 'package:fa_piano/features/nav_bar/view/nav_bar_page.dart';
import 'package:fa_piano/features/video/view/video_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> navigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');

final _homeKey = GlobalKey<NavigatorState>(debugLabel: 'homeTab');
final _videoKey = GlobalKey<NavigatorState>(debugLabel: 'videoTab');
final _articlesKey = GlobalKey<NavigatorState>(debugLabel: 'articles');

final routerProvider = Provider<GoRouter>(
  (ref) {
    final router = RouterNotifier(ref);

    return GoRouter(
      refreshListenable: router,
      routes: router.routes,
      initialLocation: LaunchPage.path,
      navigatorKey: navigatorKey,
      debugLogDiagnostics: true,
    );
  },
);

class RouterNotifier extends ChangeNotifier {
  RouterNotifier(this.ref);

  final Ref ref;

  List<RouteBase> get routes => [
        _launch,
        StatefulShellRoute.indexedStack(
          builder: (_, __, navigationShell) =>
              NavbarPage(navigationShell: navigationShell),
          branches: [
            StatefulShellBranch(
              navigatorKey: _videoKey,
              initialLocation: VideoTab.path,
              routes: [
                _videoTab,
              ],
            ),
            StatefulShellBranch(
              navigatorKey: _homeKey,
              initialLocation: HomeTab.path,
              routes: [
                _homeTab,
              ],
            ),
            StatefulShellBranch(
              navigatorKey: _articlesKey,
              initialLocation: ArticlesTab.path,
              routes: [
                _articlesTab,
              ],
            ),
          ],
        ),
      ];
}

final GoRoute _launch = GoRoute(
  name: LaunchPage.name,
  path: LaunchPage.path,
  builder: (context, state) => const LaunchPage(),
);

final GoRoute _homeTab = GoRoute(
  name: HomeTab.name,
  path: HomeTab.path,
  pageBuilder: (_, state) {
    return NoTransitionPage(
      key: state.pageKey,
      child: const HomeTab(),
    );
  },
);

final GoRoute _videoTab = GoRoute(
  name: VideoTab.name,
  path: VideoTab.path,
  pageBuilder: (_, state) {
    return NoTransitionPage(
      key: state.pageKey,
      child: const VideoTab(),
    );
  },
);

final GoRoute _articlesTab = GoRoute(
  name: ArticlesTab.name,
  path: ArticlesTab.path,
  routes: [
    _masterstvo1,
  ],
  pageBuilder: (_, state) {
    return NoTransitionPage(
      key: state.pageKey,
      child: const ArticlesTab(),
    );
  },
);
final GoRoute _masterstvo1 = GoRoute(
  name: Masterstvo1Page.name,
  path: Masterstvo1Page.path,
  parentNavigatorKey: _articlesKey,
  pageBuilder: (_, state) {
    return MaterialPage(
      key: state.pageKey,
      child: const Masterstvo1Page(),
    );
  },
);
final GoRoute _masterstvo2 = GoRoute(
  name: Masterstvo2Page.name,
  path: Masterstvo2Page.path,
  pageBuilder: (_, state) {
    return MaterialPage(
      key: state.pageKey,
      child: const Masterstvo2Page(),
    );
  },
);

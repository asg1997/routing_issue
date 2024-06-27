import 'package:fa_piano/view/masterstvo_1_page.dart';
import 'package:fa_piano/view/nav_bar/nav_bar_page.dart';
import 'package:fa_piano/view/nav_bar/tabs/articles_tab.dart';
import 'package:fa_piano/view/nav_bar/tabs/home_tab.dart';
import 'package:fa_piano/view/nav_bar/tabs/video_tab.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> navigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');

final _homeKey = GlobalKey<NavigatorState>(debugLabel: 'homeTab');
final _videoKey = GlobalKey<NavigatorState>(debugLabel: 'videoTab');
final _articlesKey = GlobalKey<NavigatorState>(debugLabel: 'articles');

final router = GoRouter(
  routes: routes,
  initialLocation: HomeTab.path,
  navigatorKey: navigatorKey,
  debugLogDiagnostics: true,
);

List<RouteBase> get routes => [
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
  pageBuilder: (_, state) {
    return MaterialPage(
      key: state.pageKey,
      child: const Masterstvo1Page(),
    );
  },
);

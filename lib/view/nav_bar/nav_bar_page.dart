import 'package:fa_piano/view/nav_bar/tabs/articles_tab.dart';
import 'package:fa_piano/view/nav_bar/tabs/home_tab.dart';
import 'package:fa_piano/view/nav_bar/tabs/video_tab.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

enum Tabs { home, video, articles }

class NavbarPage extends StatefulWidget {
  const NavbarPage({
    required this.navigationShell,
    super.key,
    this.initial = 0,
  });

  final StatefulNavigationShell navigationShell;

  final int initial;
  static void navigate(BuildContext context, {Tabs? initialTab}) {
    switch (initialTab) {
      case Tabs.home:
      case null:
        context.goNamed(HomeTab.name, extra: initialTab);
      case Tabs.articles:
        context.goNamed(ArticlesTab.name, extra: initialTab);
      case Tabs.video:
        context.goNamed(VideoTab.name, extra: initialTab);
    }
  }

  @override
  State<NavbarPage> createState() => _NavbarPageState();
}

class _NavbarPageState extends State<NavbarPage> {
  final controller = PageController(initialPage: 1);
  void onTab(int index) {
    widget.navigationShell.goBranch(index);
    // controller.jumpToPage(index);
  }

  void onPageChanged(int index) {
    widget.navigationShell.goBranch(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _NavbarWidget(
        currentIndex: widget.navigationShell.currentIndex,
        onTabTapped: onTab,
      ),
      body: IndexedStack(
        index: widget.navigationShell.currentIndex,
        children: const [
          VideoTab(),
          HomeTab(),
          ArticlesTab(),
        ],
      ),
    );
  }
}

class _NavbarWidget extends StatelessWidget {
  const _NavbarWidget({
    required this.currentIndex,
    required this.onTabTapped,
  });
  final int currentIndex;
  final void Function(int index) onTabTapped;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        boxShadow: [
          BoxShadow(
            color: const Color(0xff272C3A).withOpacity(0.10),
            spreadRadius: 1,
            blurRadius: 20,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: _NavbarIcon(
                  isActive: currentIndex == 0,
                  asset: Icons.video_call,
                  onTap: () => onTabTapped(0),
                ),
              ),
              Expanded(
                child: _NavbarIcon(
                  isActive: currentIndex == 1,
                  asset: Icons.calendar_month,
                  onTap: () => onTabTapped(1),
                ),
              ),
              Expanded(
                child: _NavbarIcon(
                  isActive: currentIndex == 2,
                  asset: Icons.article,
                  onTap: () => onTabTapped(2),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _NavbarIcon extends StatelessWidget {
  const _NavbarIcon({
    required this.isActive,
    required this.asset,
    required this.onTap,
  });
  final bool isActive;
  final IconData asset;

  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    final safeArea = MediaQuery.of(context).viewPadding.bottom;
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Container(
        padding: EdgeInsets.only(bottom: safeArea + 20, top: 20),
        child: Icon(
          asset,
          color: const Color(0xFFFFF8E3).withOpacity(isActive ? 1 : 0.5),
        ),
      ),
    );
  }
}

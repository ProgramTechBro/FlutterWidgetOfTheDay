import 'package:flutter/material.dart';
import '../models/tab_item.dart';
class CustomTabBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomTabBar({
    super.key,
    required this.controller,
    required this.tabs,
    this.indicatorColor = Colors.white,
    this.labelColor = Colors.white,
    this.unselectedColor,
    this.indicatorWeight = 3.0,
    this.isScrollable = false,
  });

  final TabController controller;
  final List<TabItem> tabs;
  final Color indicatorColor;
  final Color labelColor;
  final Color? unselectedColor;
  final double indicatorWeight;
  final bool isScrollable;

  @override
  Size get preferredSize => const Size.fromHeight(52);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: controller,
      isScrollable: isScrollable,
      indicatorColor: indicatorColor,
      indicatorWeight: indicatorWeight,
      labelColor: labelColor,
      unselectedLabelColor:
      unselectedColor ?? Colors.white.withValues(alpha: 0.55),
      labelStyle: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.4,
      ),
      unselectedLabelStyle: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
      indicatorSize: TabBarIndicatorSize.label,
      splashFactory: NoSplash.splashFactory,
      overlayColor: WidgetStateProperty.all(Colors.transparent),
      tabs: tabs
          .map(
            (t) => Tab(
          text: t.label,
          icon: Icon(t.icon, size: 20),
          iconMargin: const EdgeInsets.only(bottom: 2),
        ),
      )
          .toList(),
    );
  }
}
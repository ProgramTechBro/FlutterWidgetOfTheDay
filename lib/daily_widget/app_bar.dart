import 'package:flutter/material.dart';
import '../local_widgets/app_bar_buttons.dart';
import '../local_widgets/custom_tab_bar.dart';
import '../models/tab_item.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.leading,
    this.automaticallyImplyLeading = false,
    this.actions = const [],
    this.tabBar,
    this.gradientColors = const [Color(0xff6750a4), Color(0xff9c27b0)],
    this.gradientBegin = Alignment.topLeft,
    this.gradientEnd = Alignment.bottomRight,
    this.bottomBorderRadius = const BorderRadius.only(
      bottomLeft: Radius.circular(28),
      bottomRight: Radius.circular(28),
    ),
    this.toolbarHeight = kToolbarHeight+10,
    this.scrolledUnderElevation = 6.0,
    this.shadowColor = Colors.deepPurpleAccent,
    this.animateColor = true,
    this.excludeHeaderSemantics = false,
    this.useDefaultSemanticsOrder = true,
    this.clipBehavior = Clip.hardEdge,
    this.notificationPredicate = defaultScrollNotificationPredicate,
  });
  factory CustomAppBar.styled({
    required String title,
    required TabController tabController,
    required List<TabItem> tabs,
    VoidCallback? onNotificationTap,
    VoidCallback? onSettingsTap,
    List<Color> gradientColors = const [Color(0xff6750a4), Color(0xff9c27b0)],
    BorderRadius bottomBorderRadius = const BorderRadius.only(
      bottomLeft: Radius.circular(28),
      bottomRight: Radius.circular(28),
    ),
    double scrolledUnderElevation = 6.0,
    Color shadowColor = Colors.deepPurple,
    bool animateColor = true,
    bool excludeHeaderSemantics = false,
    bool useDefaultSemanticsOrder = true,
    Clip clipBehavior = Clip.hardEdge,
    ScrollNotificationPredicate notificationPredicate =
        defaultScrollNotificationPredicate,
  }) {
    return CustomAppBar(
      title: title,
      gradientColors: gradientColors,
      bottomBorderRadius: bottomBorderRadius,
      scrolledUnderElevation: scrolledUnderElevation,
      shadowColor: shadowColor,
      animateColor: animateColor,
      excludeHeaderSemantics: excludeHeaderSemantics,
      useDefaultSemanticsOrder: useDefaultSemanticsOrder,
      clipBehavior: clipBehavior,
      notificationPredicate: notificationPredicate,
      ///Actions
      actions: [
        AppBarButtons(
          iconData: Icons.notifications_none_rounded,
          tooltip: 'Notifications',
          onTap: onNotificationTap,
        ),
        const SizedBox(width: 6),
        AppBarButtons(
          iconData: Icons.settings_outlined,
          tooltip: 'Settings',
          onTap: onSettingsTap,
        ),
      ],
      ///Tab Bar using Bottom property of AppBar
      // tabBar: CustomTabBar(
      //   controller: tabController,
      //   tabs: tabs,
      //   indicatorColor: Colors.white,
      //   labelColor: Colors.white,
      //   indicatorWeight: 3,
      // ),
    );
  }
  final String title;
  final Widget? leading;
  final bool automaticallyImplyLeading;
  final List<Widget> actions;
  final CustomTabBar? tabBar;
  final List<Color> gradientColors;
  final Alignment gradientBegin;
  final Alignment gradientEnd;
  final BorderRadius bottomBorderRadius;
  final double toolbarHeight;
  final double scrolledUnderElevation;
  final Color shadowColor;
  final bool animateColor;
  final bool excludeHeaderSemantics;
  final bool useDefaultSemanticsOrder;
  final Clip clipBehavior;
  final ScrollNotificationPredicate notificationPredicate;


  @override
  Size get preferredSize => Size.fromHeight(
    toolbarHeight + (tabBar?.preferredSize.height ?? 0));



  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20,
          letterSpacing: 0.3,
        ),
      ),
      leading: leading ??
          Builder(
            builder: (innerContext) {
              return IconButton(
                onPressed: () => Scaffold.of(innerContext).openDrawer(),
                icon: const Icon(
                  Icons.menu_rounded,
                  color: Colors.white,
                  size: 20,
                ),
              );
            },
          ),
      automaticallyImplyLeading: automaticallyImplyLeading,
      actions: [...actions, const SizedBox(width: 8)],
      bottom: tabBar,
      backgroundColor: Colors.transparent,
      elevation: 0,
      scrolledUnderElevation: scrolledUnderElevation,
      shadowColor: shadowColor,
      animateColor: animateColor,
      excludeHeaderSemantics: excludeHeaderSemantics,
      useDefaultSemanticsOrder: useDefaultSemanticsOrder,
      clipBehavior: clipBehavior,
      notificationPredicate: notificationPredicate,
      toolbarHeight: toolbarHeight,
      shape: RoundedRectangleBorder(borderRadius: bottomBorderRadius),
      flexibleSpace: ClipRRect(
        borderRadius: bottomBorderRadius,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: gradientColors,
              begin: gradientBegin,
              end: gradientEnd,
            ),
          ),
        ),
      ),
      iconTheme: const IconThemeData(color: Colors.white),
      actionsIconTheme: const IconThemeData(color: Colors.white, size: 22),
      actionsPadding: const EdgeInsets.symmetric(horizontal: 4),
    );
  }

}
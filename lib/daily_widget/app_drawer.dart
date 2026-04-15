import 'package:flutter/material.dart';
import 'package:flutter_widget_of_the_day/local_widgets/close_drawer_button.dart';
import '../local_widgets/app_drawer_header.dart';
import '../local_widgets/drawer_menu_list.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final bottomPadding= MediaQuery.of(context).padding.bottom;
    return Drawer(
      width: 300,
      child: Column(
        children: [
          const AppDrawerHeader(),
          const Expanded(child: DrawerMenuList()),
          Padding(
            padding: EdgeInsets.only(bottom: bottomPadding),
            child: const CloseDrawerButton(),
          ),
        ],
      ),
    );
  }
}
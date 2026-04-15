import 'package:flutter/material.dart';
import 'drawer_tile.dart';

class DrawerMenuList extends StatelessWidget {
  const DrawerMenuList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      children: const [
        DrawerTile(icon: Icons.home, label: 'Home', selected: true),
        DrawerTile(icon: Icons.widgets, label: 'Widgets'),
        DrawerTile(icon: Icons.bookmark, label: 'Bookmarks'),
        DrawerTile(icon: Icons.star, label: 'Favourites'),
        Divider(),
        DrawerTile(icon: Icons.settings, label: 'Settings'),
        DrawerTile(icon: Icons.info, label: 'About'),
      ],
    );
  }
}
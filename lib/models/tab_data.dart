import 'package:flutter/material.dart';
import 'package:flutter_widget_of_the_day/models/tab_item.dart';
class TabData {
  const TabData({
    required this.tabItem,
    required this.items,
    required this.accentColor,
    required this.emoji,
  });
  final TabItem tabItem;
  final List<String> items;
  final Color accentColor;
  final String emoji;
}
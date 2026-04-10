import 'package:flutter/material.dart';
import '../models/tab_data.dart';
import '../models/tab_item.dart';
const List<TabData> tabDataList = [
  TabData(
    tabItem: TabItem(label: 'Fruits', icon: Icons.apple),
    items: [
      'Apple', 'Mango', 'Banana', 'Grapes',
      'Watermelon', 'Strawberry', 'Peach', 'Pineapple',
    ],
    accentColor: Color(0xffce93d8),
    emoji: '🍎',
  ),
  TabData(
    tabItem: TabItem(label: 'Animals', icon: Icons.pets),
    items: [
      'Lion', 'Tiger', 'Elephant', 'Giraffe',
      'Zebra', 'Cheetah', 'Panda', 'Dolphin',
    ],
    accentColor: Color(0xff80cbc4),
    emoji: '🐾',
  ),
  TabData(
    tabItem: TabItem(label: 'Cities', icon: Icons.location_city),
    items: [
      'Paris', 'Tokyo', 'New York', 'London',
      'Dubai', 'Sydney', 'Rome', 'Toronto',
    ],
    accentColor: Color(0xff90caf9),
    emoji: '🌆',
  ),
];
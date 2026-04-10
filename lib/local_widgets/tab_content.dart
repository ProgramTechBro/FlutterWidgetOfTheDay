import 'package:flutter/material.dart';

import '../models/tab_data.dart';
import 'item_card.dart';
class TabContent extends StatelessWidget {
  const TabContent({super.key, required this.data});

  final TabData data;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(16, 16, 16, 8),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
          decoration: BoxDecoration(
            color: data.accentColor.withValues(alpha: 0.15),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: data.accentColor.withValues(alpha: 0.35),
              width: 1,
            ),
          ),
          child: Row(
            children: [
              Text(data.emoji, style: const TextStyle(fontSize: 32)),
              const SizedBox(width: 14),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data.tabItem.label,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: data.accentColor
                          .withValues(alpha: 1)
                          .withValues(red: (data.accentColor.r * 0.6).toDouble()),
                    ),
                  ),
                  Text(
                    '${data.items.length} items',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: GridView.builder(
            padding: const EdgeInsets.fromLTRB(16, 4, 16, 20),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 2.6,
            ),
            itemCount: data.items.length,
            itemBuilder: (context, index) {
              return ItemCard(
                label: data.items[index],
                index: index,
                accentColor: data.accentColor,
                emoji: data.emoji,
              );
            },
          ),
        ),
      ],
    );
  }
}
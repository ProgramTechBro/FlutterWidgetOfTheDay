import 'package:flutter/material.dart';
class ItemCard extends StatelessWidget {
  const ItemCard({super.key,
    required this.label,
    required this.index,
    required this.accentColor,
    required this.emoji,
  });

  final String label;
  final int index;
  final Color accentColor;
  final String emoji;

  @override
  Widget build(BuildContext context) {
    final isEven = index.isEven;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration: BoxDecoration(
        color: isEven
            ? accentColor.withValues(alpha: 0.12)
            : Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: accentColor.withValues(alpha: 0.30),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: accentColor.withValues(alpha: 0.08),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          children: [
            Text(emoji, style: const TextStyle(fontSize: 18)),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey.shade800,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Container(
              width: 22,
              height: 22,
              decoration: BoxDecoration(
                color: accentColor.withValues(alpha: 0.20),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  '${index + 1}',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: accentColor
                        .withValues(alpha: 1),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
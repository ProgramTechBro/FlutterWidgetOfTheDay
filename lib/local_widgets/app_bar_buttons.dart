import 'package:flutter/material.dart';

class AppBarButtons extends StatelessWidget {
  const AppBarButtons({
    super.key,
    required this.iconData,
    this.onTap,
    this.tooltip,
  });

  final IconData iconData;
  final VoidCallback? onTap;
  final String? tooltip;

  @override
  Widget build(BuildContext context) {
    final button = GestureDetector(
      onTap: onTap,
      child: Container(
        width: 38,
        height: 38,
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.18),
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.white.withValues(alpha: 0.35),
            width: 1,
          ),
        ),
        alignment: Alignment.center,
        child: Icon(iconData, color: Colors.white, size: 20),
      ),
    );

    if (tooltip != null) {
      return Tooltip(message: tooltip!, child: button);
    }
    return button;
  }
}

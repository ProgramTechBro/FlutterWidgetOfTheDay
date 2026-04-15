import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {
  const DrawerTile({
    super.key,
    required this.icon,
    required this.label,
    this.selected = false,
    this.onTap,
  });

  final IconData icon;
  final String label;
  final bool selected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: selected ? const Color(0xff6750a4) : Colors.grey,
      ),
      title: Text(
        label,
        style: TextStyle(
          fontWeight: selected ? FontWeight.bold : FontWeight.normal,
          color: selected ? const Color(0xff6750a4) : Colors.black87,
        ),
      ),
      selected: selected,
      selectedTileColor: const Color(0xff6750a4).withOpacity(0.1),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      contentPadding: const EdgeInsets.symmetric(horizontal: 15),
      dense: false,
      visualDensity: VisualDensity.comfortable,
      splashColor: const Color(0xff6750a4).withOpacity(0.15),
      onTap: onTap,
    );
  }
}
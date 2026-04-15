import 'package:flutter/material.dart';
class CloseDrawerButton extends StatelessWidget {
  const CloseDrawerButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      width: 280,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xff6750a4), Color(0xff9c27b0)],
        ),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(14),
          onTap: () => Navigator.pop(context),
          child: const Center(
            child: Text(
              'Close Drawer',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class AppDrawerHeader extends StatelessWidget {
  const AppDrawerHeader({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: DrawerHeader(
        margin: EdgeInsets.zero,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff6750a4), Color(0xff9c27b0)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(
              radius: 34,
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage(
                'https://i.pravatar.cc/150?img=11',
              ),
            ),
            const Spacer(),
            const Text(
              'Waqar Malik',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.4,
              ),
            ),
            const SizedBox(height: 2),
            const Text(
              'malikwaqarbatch203@gmail.com',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
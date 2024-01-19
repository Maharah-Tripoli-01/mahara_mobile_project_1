import 'package:flutter/material.dart';

class UserProfileHeader extends StatelessWidget {
  const UserProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          clipBehavior: Clip.hardEdge,
          borderRadius: BorderRadius.circular(56),
          child: Image.asset(
            'assets/image/profile_image.webp',
            height: 112,
            width: 112,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const Text(
          'Ahmed Ashour',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Text(
          'Programer',
          style: TextStyle(color: Colors.grey),
        ),
        const SizedBox(
          height: 32,
        ),
      ],
    );
  }
}

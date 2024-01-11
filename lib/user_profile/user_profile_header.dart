import 'package:flutter/material.dart';

class UserProfileHeader extends StatelessWidget {
  const UserProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(72),
            color: Colors.white54,
          ),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Image.asset(
              'assets/images/user_profile_image.png',
              width: 82,
              height: 82,
            ),
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        const Text(
          "Maharah",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        const Text(
          'Programer',
          style: TextStyle(
            color: Colors.black38,
          ),
        ),
      ],
    );
  }
}

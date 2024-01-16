import 'package:flutter/material.dart';
import 'package:maharah_project/user_profile/widget/option_tile.dart';

class UserProfileBottomSection extends StatelessWidget {
  const UserProfileBottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.white,
      child: Column(
        children: [
          OptionTile(
            icon: Icons.account_circle,
            name: "Edit profile",
            backgroundColorIcon: Colors.pinkAccent.withOpacity(0.2),
            colorIcon: Colors.pinkAccent,
          ),
          const SizedBox(
            height: 12,
          ),
          OptionTile(
            icon: Icons.query_stats,
            name: "My status",
            backgroundColorIcon: Colors.greenAccent.withOpacity(0.2),
            colorIcon: Colors.greenAccent,
          ),
          const SizedBox(
            height: 12,
          ),
          OptionTile(
            icon: Icons.settings,
            name: "Settings",
            backgroundColorIcon: Colors.purple.withOpacity(0.2),
            colorIcon: Colors.purple,
          ),
          const Divider(
            height: 24,
          ),
          OptionTile(
            icon: Icons.insert_invitation,
            name: "invite friends",
            backgroundColorIcon: Colors.grey.withOpacity(0.2),
            colorIcon: Colors.grey,
          ),
          const SizedBox(
            height: 12,
          ),
          OptionTile(
            icon: Icons.help,
            name: "Help",
            backgroundColorIcon: Colors.grey.withOpacity(0.2),
            colorIcon: Colors.grey,
          ),
          const SizedBox(
            height: 24,
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Sing Out',
              style: TextStyle(
                color: Colors.red
              ),
            ),
          ),
        ],
      ),
    );
  }
}

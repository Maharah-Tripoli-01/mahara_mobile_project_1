import 'package:flutter/material.dart';
import 'package:maharah_project/ui/screens/user_profile_screens/bottom_section_name.dart';
import 'package:maharah_project/ui/screens/user_profile_screens/user_profile_header.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_back_ios,
            size: 16,
          ),
        ),
        title: const Text(
          "User Profile",
          style: TextStyle(fontSize: 16),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: theme.indicatorColor,
              width: double.infinity,
              child: const Padding(
                padding: EdgeInsets.only(top: 64),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    UserProfileHeader(),
                    BottomSectionName(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

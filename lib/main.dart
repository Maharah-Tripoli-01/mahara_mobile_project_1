import 'package:flutter/material.dart';
import 'package:maharah_project/home_page/home_page_screen.dart';
import 'package:maharah_project/user_profile/user_profile_screen.dart';

void main() {
  runApp(
     MaterialApp(
      debugShowCheckedModeBanner: false,

      routes: {
        HomePageScreen.route : (context) => const HomePageScreen(),
        UserProfileScreen.route : (context) => const UserProfileScreen()
      },
    ),
  );
}

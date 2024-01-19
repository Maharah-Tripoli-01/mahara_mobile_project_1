import 'package:flutter/material.dart';
import 'package:maharah_project/models/course_details_model.dart';
import 'package:maharah_project/ui/screens/cart_screen/cart_screen.dart';
import 'package:maharah_project/ui/screens/course_details/course_details_screen.dart';
import 'package:maharah_project/ui/screens/home_screen/home_screen.dart';
import 'package:maharah_project/ui/screens/user_profile_screens/edit_profile_name.dart';

import 'ui/screens/user_profile_screens/user_profile_screen.dart';

class RouteGenerator {
  static const String homeScreen = '/';
  static const String userProfileScreen = '/UserProfileRoute';
  static const String courseDetailsScreen = '/courseDetailsRoute';
  static const String cartScreen = '/cartScreen';
  static const String editProfileNameScreen = '/editProfileNameScreen';

  RouteGenerator._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case homeScreen:
        return _buildRoute(const HomeScreen(), settings);
      case userProfileScreen:
        return _buildRoute(const UserProfileScreen(), settings);
      case cartScreen:
        return _buildRoute(const CartScreen(), settings);
      case editProfileNameScreen:
        return _buildRoute(const EditProfileNameScreen(), settings);
      case courseDetailsScreen:
        args as CourseDetailsModel;
        return _buildRoute(
          const CourseDetailsScreen(),
          settings,
        );
      default:
        return _buildRoute(
            RouteNotFoundScreen(
              routeName: settings.name,
            ),
            settings);
    }
  }

  static MaterialPageRoute _buildRoute(Widget child, RouteSettings settings) {
    return MaterialPageRoute(builder: (_) => child, settings: settings);
  }
}

class RouteNotFoundScreen extends StatelessWidget {
  const RouteNotFoundScreen({
    Key? key,
    required this.routeName,
  }) : super(key: key);
  final String? routeName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('The route $routeName is not found')),
      body: const Center(
          child: Text('Sorry, the page you are looking for does not exist.')),
    );
  }
}

class RouteException implements Exception {
  final String message;

  const RouteException(this.message);

  FormatException exceptionRoute() {
    return FormatException(message);
  }
}

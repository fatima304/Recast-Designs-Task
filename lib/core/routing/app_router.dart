import 'package:flutter/material.dart';
import 'package:recast_design_task/features/home/screen/home_screen.dart';
import 'package:recast_design_task/features/profile/screen/profile_screen.dart';
import 'routes.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case Routes.profileScreen:
        return MaterialPageRoute(
          builder: (_) => const ProfileScreen(),
        );
      default:
        return null;
    }
  }
}

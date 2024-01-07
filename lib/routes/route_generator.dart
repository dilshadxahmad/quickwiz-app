import 'package:flutter/material.dart';
import 'package:quickwiz_app/Routes/app_navigation_routes.dart';
import 'package:quickwiz_app/screens/difficulty_selection_screen.dart';
import 'package:quickwiz_app/screens/splash_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // final args = settings.arguments;
    switch (settings.name) {
      case AppNavRoutes.initialRoute:
        return routeScreen(child: const SplashScreen());

      case AppNavRoutes.difficultySelectionScreen:
        return routeScreen(child: const DifficultySelectionScreen());

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return const Text('Error Page');
    });
  }

  static Route<dynamic> routeScreen({
    Widget? child,
  }) {
    return MaterialPageRoute(
      // builder: (context) => child!,
      builder: (context) => SafeArea(
        child: child!,
      ),
    );
  }
}

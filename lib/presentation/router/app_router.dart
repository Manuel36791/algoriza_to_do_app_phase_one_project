import 'package:algoriza_to_do_app_phase_one_project/presentation/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import '../screens/home/home_layout.dart';
import 'package:algoriza_to_do_app_phase_one_project/constants/screens.dart'
    as screens;

class AppRouter {
  late Widget startWidget;

  Route? onGenerateRoute(RouteSettings settings) {
    startWidget = const SplashScreen();

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => startWidget);
      case screens.homeScreen:
        return MaterialPageRoute(builder: (_) => HomeLayout());
      default:
        return null;
    }
  }
}

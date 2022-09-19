import 'package:ai_interior/screens/camera_screen.dart';
import 'package:ai_interior/screens/welcome_page.dart';
import 'package:ai_interior/utils/routes.dart';
import 'package:flutter/material.dart';

import '../screens/home.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (context) => const HomePage());
      case welcome:
        return MaterialPageRoute(
            builder: (context) => const WelcomePage(), settings: settings);
      case camerascreen:
        return MaterialPageRoute(builder: (context) => const CameraScreen());
    }
    return null;
  }
}

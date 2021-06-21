import 'package:flutter/material.dart';
import "../screens/HomeScreen.dart";
import "../screens/SettingsScreen.dart";
import '../screens/SupportScreen.dart';
import "../utils/routes.dart";

///////
class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case settingsRoute:
        return MaterialPageRoute(builder: (_) => SettingsScreen());
      case supportRoute:
        return MaterialPageRoute(builder: (_) => SupportScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}

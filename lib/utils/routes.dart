import 'package:flutter/material.dart';
import 'package:weather_app/modules/home/home.dart';
import 'package:weather_app/modules/splash/splash.dart';

class RouteGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/splash':
        return MaterialPageRoute(builder: (_) => Splash());
      case '/home':
        return MaterialPageRoute(builder: (_) => Home());
      // case '/home':
      //   return MaterialPageRoute(builder: (_) => Home());
      // case '/home':
      //   return MaterialPageRoute(builder: (_) => Home());
    }
  }
}

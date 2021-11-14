import 'package:flutter/material.dart';
import 'package:weather_app/modules/home/home.dart';
import 'package:weather_app/modules/more/more.dart';
import 'package:weather_app/modules/search/search.dart';
import 'package:weather_app/modules/settings/setting.dart';
import 'package:weather_app/modules/splash/splash.dart';

class RouteGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/splash':
        return MaterialPageRoute(builder: (_) => Splash());
      case '/home':
        return MaterialPageRoute(builder: (_) => Home());
      case '/more':
        return MaterialPageRoute(builder: (_) => More());
      case '/search':
        return MaterialPageRoute(builder: (_) => Search());
      case '/setting':
        return MaterialPageRoute(builder: (_) => Setting());
    }
  }
}

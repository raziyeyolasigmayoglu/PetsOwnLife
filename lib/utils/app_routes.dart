import 'package:flutter/material.dart';
import 'package:pets_own_life/app/ui/home_page.dart';

class AppRoutes {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/send':
        return MaterialPageRoute<dynamic>(builder: (context) => HomePage());

      case '/buy':
        return MaterialPageRoute<dynamic>(builder: (context) => HomePage());

      case '/receive':
        return MaterialPageRoute<dynamic>(builder: (context) => HomePage());

      default:
        return MaterialPageRoute<dynamic>(
            builder: (context) => const HomePage());
    }
  }
}

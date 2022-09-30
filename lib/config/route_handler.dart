import 'package:flutter/material.dart';

import '../navigation/navigation_pages.dart';
import 'app_routes.dart';

Route<dynamic>? generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.index:
      return MaterialPageRoute(
        builder: (_) => LoginPage(),
      );

    case AppRoutes.home:
      final args = settings.arguments as Map<String, dynamic>;
      return MaterialPageRoute(
        builder: (_) => HomePage(
          userInfo: args,
        ),
      );

    case AppRoutes.profile:
      return MaterialPageRoute(
        builder: (_) => ProfilePage(),
      );

    default:
      return MaterialPageRoute(
        builder: (_) => LoginPage(),
      );
  }
}

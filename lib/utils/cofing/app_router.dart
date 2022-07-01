import 'package:apiwithbloc/ui/screen/home/home_screen.dart';
import 'package:apiwithbloc/ui/screen/settings/settings_screen.dart';
import 'package:flutter/material.dart';

typedef RouteBuilder = Widget Function(BuildContext context, dynamic arguments);

class AppRouter {
  AppRouter._();

  static final GlobalKey<NavigatorState> key = GlobalKey<NavigatorState>();

  static Future<T?> pushNamed<T extends Object?>(String routeName,
      {Object? arguments}) {
    return key.currentState!.pushNamed(routeName, arguments: arguments);
  }

  static final Map<String, RouteBuilder> routes = {
    HomeScreen.id: (_, __) => HomeScreen(),
    SettingScreen.id: (_, __) => SettingScreen(),
  };
}

import 'package:apiwithbloc/bloc/user_bloc/users_bloc.dart';
import 'package:apiwithbloc/ui/screen/home/home_screen.dart';
import 'package:apiwithbloc/ui/screen/settings/settings_screen.dart';
import 'package:apiwithbloc/ui/screen/users/users_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

typedef RouteBuilder = Widget Function(BuildContext context, dynamic arguments);

class AppRouter {
  AppRouter._();

  static final GlobalKey<NavigatorState> key = GlobalKey<NavigatorState>();

  static Future<T?> pushNamed<T extends Object?>(String routeName,
      {Object? arguments}) {
    return key.currentState!.pushNamed(routeName, arguments: arguments);
  }

  static final Map<String, RouteBuilder> routes = {
    HomeScreen.id: (_, __) => const HomeScreen(),
    SettingScreen.id: (_, __) => const SettingScreen(),
    UserDetail.id: (_,arguments) =>  BlocProvider<UsersBloc>(
      create: (context) => UsersBloc(

      ),
    ),
  };
}

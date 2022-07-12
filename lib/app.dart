import 'package:apiwithbloc/bloc/theme_bloc/theme_bloc.dart';
import 'package:apiwithbloc/ui/screen/navigation/root_sreen.dart';

import 'package:apiwithbloc/utils/bloc/bloc_inital.dart';
import 'package:apiwithbloc/utils/cofing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: BlocInitial.bloc,
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            navigatorKey: AppRouter.key,
            onGenerateRoute: (settings) {
              final builder = AppRouter.routes[settings.name];
              if (builder != null) {
                return MaterialPageRoute(
                    settings: settings,
                    builder: (context) => builder(context, settings.arguments));
              }
              return null;
            },
            debugShowCheckedModeBanner: false,
            theme: state.theme.themeData,
            home: const RootScreen(),
          );
        },
      ),
    );
  }
}

import 'package:apiwithbloc/bloc/theme_bloc/theme_bloc.dart';
import 'package:apiwithbloc/utils/preferences%20/preferences.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingScreen extends StatelessWidget {
  static const id = '/settings';

  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Column(
        children: [
          Padding(padding: const EdgeInsets.only(top: 5),
            child: SwitchListTile(
              title: const Text('Theme'),
              value: Preferences().value ?? BlocProvider.of<ThemeBloc>(context).state.isDark,
              onChanged: (value){
                BlocProvider.of<ThemeBloc>(context).add(ThemeChange(value));
              },
            )
          )
        ],
      ),
    );
  }
}


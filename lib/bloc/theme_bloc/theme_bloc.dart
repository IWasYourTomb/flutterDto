
import 'package:apiwithbloc/utils/preferences%20/preferences.dart';
import 'package:apiwithbloc/utils/theme/app_theme_dark.dart';
import 'package:apiwithbloc/utils/theme/app_theme_white.dart';
import 'package:apiwithbloc/utils/theme/base/i_theme.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeState(isDark: Preferences().value ?? false)) {
    on<ThemeChange>(_onThemeChanged);
  }

  void _onThemeChanged(ThemeChange event, Emitter<ThemeState> emit) async {
    Preferences().themeBool = event.isDark;
    emit(ThemeState(isDark: event.isDark));
  }
}


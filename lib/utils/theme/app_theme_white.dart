import 'package:apiwithbloc/utils/theme/base/i_theme.dart';
import 'package:flutter/material.dart';

import '../cofing/app_colors.dart';

class AppThemeLight implements ITheme{
  static AppThemeLight? _instance;

  factory AppThemeLight() => _instance ??= AppThemeLight._();

  AppThemeLight._();

  @override
  final Color backgroundColor = AppColors.black;
  @override
  final Color textColor = AppColors.white;
  @override
  final Color cardColor = AppColors.cardLight;
  @override
  final Color borderColor = AppColors.borderLight;
  @override
  final ThemeData themeData = ThemeData(
      brightness: Brightness.light,
      backgroundColor: AppColors.white
  );
}
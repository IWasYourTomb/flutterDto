import 'package:apiwithbloc/utils/cofing/app_colors.dart';
import 'package:apiwithbloc/utils/theme/base/i_theme.dart';
import 'package:flutter/material.dart';

class AppThemeDark implements ITheme {
  static AppThemeDark? _instance;

  factory AppThemeDark() => _instance ??= AppThemeDark._();

  AppThemeDark._();

  @override
  final Color backgroundColor = AppColors.black;
  @override
  final Color textColor = AppColors.white;
  @override
  final Color cardColor = AppColors.cardDark;
  @override
  final Color borderColor = AppColors.borderDark;
  @override
  final ThemeData themeData = ThemeData(
    brightness: Brightness.dark,
    backgroundColor: AppColors.black
  );
}

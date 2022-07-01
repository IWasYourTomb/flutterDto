part of 'theme_bloc.dart';

@immutable
class ThemeState extends Equatable {
  ITheme get theme => isDark ? AppThemeDark() : AppThemeLight();
  final bool isDark;

  const ThemeState({required this.isDark});

  @override
  List<Object?> get props => [theme, isDark];
}

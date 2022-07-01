part of 'theme_bloc.dart';

@immutable
abstract class ThemeEvent extends Equatable {
  const ThemeEvent();

  @override
  List<Object?> get props => [];
}

class ThemeChange extends ThemeEvent {
  final isDark;

  const ThemeChange(this.isDark);

  @override
  List<Object?> get props => [isDark];
}

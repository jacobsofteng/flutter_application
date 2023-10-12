import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/core/theme/colors.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../theme_color_scheme.dart';

part 'theme_cubit.freezed.dart';
part 'theme_state.dart';

@injectable
class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeState(light));

  void toggleTheme() {
    final newTheme = state.themeColorScheme == light ? dark : light;
    emit(state.copyWith(themeColorScheme: newTheme));
  }
}

class ThemeProvider extends InheritedWidget {
  final ThemeCubit themeCubit;

  const ThemeProvider({
    super.key,
    required this.themeCubit,
    required Widget child,
  }) : super(child: child);

  static ThemeProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ThemeProvider>();
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => false;
}

extension ThemeCubitExtension on BuildContext {
  ThemeColorScheme get themeCubit =>
      ThemeProvider.of(this)!.themeCubit.state.themeColorScheme;
}

extension ThemeStateX on ThemeState {
  bool get isDarkTheme => themeColorScheme == dark;
}

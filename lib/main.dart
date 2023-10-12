import 'package:flutter/material.dart';
import 'package:flutter_application/core/di/injection.dart';
import 'package:flutter_application/core/theme/cubit/theme_cubit.dart';
import 'package:flutter_application/features/counter/bloc/counter_bloc.dart';
import 'package:flutter_application/features/weather/bloc/weather_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/config/bloc_observer.dart';
import 'features/counter/view/counter_screen.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Bloc.observer = Observer();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<ThemeCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<CounterBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<WeatherBloc>(),
        ),
      ],
      child: Builder(builder: (context) {
        return ThemeProvider(
          themeCubit: context.read<ThemeCubit>(),
          child: BlocBuilder<ThemeCubit, ThemeState>(
            builder: (context, state) {
              return MaterialApp(
                title: 'Test App',
                theme: ThemeData(
                  floatingActionButtonTheme: FloatingActionButtonThemeData(
                    backgroundColor:
                        state.themeColorScheme.primaryButtonGradient1,
                  ),
                  appBarTheme: AppBarTheme(
                    backgroundColor:
                        state.themeColorScheme.appBarBackgroundColor,
                    elevation: 1,
                  ),
                  scaffoldBackgroundColor:
                      state.themeColorScheme.backgroundGradientColor1,
                  textTheme: TextTheme(
                    displayLarge: TextStyle(
                      fontSize: 24,
                      color: state.themeColorScheme.primaryTextColor,
                    ),
                    displayMedium: TextStyle(
                      fontSize: 20,
                      color: state.themeColorScheme.primaryTextColor,
                    ),
                    displaySmall: TextStyle(
                      fontSize: 18,
                      color: state.themeColorScheme.primaryTextColor,
                    ),
                    bodyLarge: TextStyle(
                      fontSize: 16,
                      color: state.themeColorScheme.secondaryTextColor,
                    ),
                    bodyMedium: TextStyle(
                      fontSize: 14,
                      color: state.themeColorScheme.secondaryTextColor,
                    ),
                    bodySmall: TextStyle(
                      fontSize: 12,
                      color: state.themeColorScheme.secondaryTextColor,
                    ),
                  ),
                ),
                home: const CounterScreen(),
              );
            },
          ),
        );
      }),
    );
  }
}

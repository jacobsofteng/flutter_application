import 'package:flutter/material.dart';
import 'package:flutter_application/core/theme/cubit/theme_cubit.dart';
import 'package:flutter_application/features/weather/bloc/weather_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/counter_bloc.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterBloc, CounterState>(
      builder: (context, state) {
        return BlocListener<ThemeCubit, ThemeState>(
          listener: (context, tstate) {
            context
                .read<CounterBloc>()
                .add(CounterEvent.checkIsDarkTheme(tstate.isDarkTheme));
          },
          child: BlocBuilder<WeatherBloc, WeatherState>(
            builder: (context, wstate) {
              return Scaffold(
                appBar: AppBar(
                  title: const Text('Weather counter'),
                  centerTitle: true,
                ),
                body: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (wstate.isLoading)
                          const CircularProgressIndicator.adaptive(),
                        if (wstate.isSuccess)
                          Text(
                              'Weather for ${wstate.country}, ${wstate.city}: ${wstate.tempCelcius}°C (${wstate.tempFahrenheit}°F)',
                              style: Theme.of(context).textTheme.displayMedium),
                        if (wstate.isInitial)
                          Text('Press the icon to get location and weather',
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.displayMedium),
                        const SizedBox(height: 50),
                        Text('${state.counter}',
                            style: Theme.of(context).textTheme.displayLarge),
                      ],
                    ),
                  ),
                ),
                floatingActionButton: Padding(
                  padding: const EdgeInsets.fromLTRB(50, 30, 20, 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          FloatingActionButton(
                            onPressed: () => context
                                .read<WeatherBloc>()
                                .add(const WeatherEvent.fetchWeather()),
                            child: const Icon(Icons.cloud),
                          ),
                          const SizedBox(height: 30),
                          FloatingActionButton(
                            onPressed: () =>
                                context.read<ThemeCubit>().toggleTheme(),
                            child: const Icon(Icons.palette),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          FloatingActionButton(
                            onPressed: () => context
                                .read<CounterBloc>()
                                .add(const CounterEvent.increment()),
                            child: const Icon(Icons.add),
                          ),
                          const SizedBox(height: 30),
                          FloatingActionButton(
                            onPressed: () => context
                                .read<CounterBloc>()
                                .add(const CounterEvent.decrement()),
                            child: const Icon(Icons.remove),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}

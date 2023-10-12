// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_application/core/services/api_service.dart' as _i3;
import 'package:flutter_application/core/services/location_service.dart' as _i5;
import 'package:flutter_application/core/theme/cubit/theme_cubit.dart' as _i6;
import 'package:flutter_application/features/counter/bloc/counter_bloc.dart'
    as _i4;
import 'package:flutter_application/features/weather/bloc/weather_bloc.dart'
    as _i8;
import 'package:flutter_application/features/weather/repository/weather_repository.dart'
    as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.ApiService>(_i3.ApiService());
    gh.factory<_i4.CounterBloc>(() => _i4.CounterBloc());
    gh.singleton<_i5.LocationService>(_i5.LocationService());
    gh.factory<_i6.ThemeCubit>(() => _i6.ThemeCubit());
    gh.singleton<_i7.WeatherRepository>(_i7.WeatherRepository(
      gh<_i5.LocationService>(),
      gh<_i3.ApiService>(),
    ));
    gh.factory<_i8.WeatherBloc>(
        () => _i8.WeatherBloc(gh<_i7.WeatherRepository>()));
    return this;
  }
}

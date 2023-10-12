// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeatherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchWeather,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchWeather value) fetchWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchWeather value)? fetchWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchWeather value)? fetchWeather,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherEventCopyWith<$Res> {
  factory $WeatherEventCopyWith(
          WeatherEvent value, $Res Function(WeatherEvent) then) =
      _$WeatherEventCopyWithImpl<$Res, WeatherEvent>;
}

/// @nodoc
class _$WeatherEventCopyWithImpl<$Res, $Val extends WeatherEvent>
    implements $WeatherEventCopyWith<$Res> {
  _$WeatherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchWeatherImplCopyWith<$Res> {
  factory _$$FetchWeatherImplCopyWith(
          _$FetchWeatherImpl value, $Res Function(_$FetchWeatherImpl) then) =
      __$$FetchWeatherImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchWeatherImplCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$FetchWeatherImpl>
    implements _$$FetchWeatherImplCopyWith<$Res> {
  __$$FetchWeatherImplCopyWithImpl(
      _$FetchWeatherImpl _value, $Res Function(_$FetchWeatherImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchWeatherImpl implements _FetchWeather {
  const _$FetchWeatherImpl();

  @override
  String toString() {
    return 'WeatherEvent.fetchWeather()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchWeatherImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchWeather,
  }) {
    return fetchWeather();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchWeather,
  }) {
    return fetchWeather?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchWeather,
    required TResult orElse(),
  }) {
    if (fetchWeather != null) {
      return fetchWeather();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchWeather value) fetchWeather,
  }) {
    return fetchWeather(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchWeather value)? fetchWeather,
  }) {
    return fetchWeather?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchWeather value)? fetchWeather,
    required TResult orElse(),
  }) {
    if (fetchWeather != null) {
      return fetchWeather(this);
    }
    return orElse();
  }
}

abstract class _FetchWeather implements WeatherEvent {
  const factory _FetchWeather() = _$FetchWeatherImpl;
}

/// @nodoc
mixin _$WeatherState {
  StateStatus get status => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  double get tempCelcius => throw _privateConstructorUsedError;
  double get tempFahrenheit => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherStateCopyWith<WeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res, WeatherState>;
  @useResult
  $Res call(
      {StateStatus status,
      String errorMessage,
      String city,
      String country,
      double tempCelcius,
      double tempFahrenheit});
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res, $Val extends WeatherState>
    implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorMessage = null,
    Object? city = null,
    Object? country = null,
    Object? tempCelcius = null,
    Object? tempFahrenheit = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      tempCelcius: null == tempCelcius
          ? _value.tempCelcius
          : tempCelcius // ignore: cast_nullable_to_non_nullable
              as double,
      tempFahrenheit: null == tempFahrenheit
          ? _value.tempFahrenheit
          : tempFahrenheit // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherStateImplCopyWith<$Res>
    implements $WeatherStateCopyWith<$Res> {
  factory _$$WeatherStateImplCopyWith(
          _$WeatherStateImpl value, $Res Function(_$WeatherStateImpl) then) =
      __$$WeatherStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StateStatus status,
      String errorMessage,
      String city,
      String country,
      double tempCelcius,
      double tempFahrenheit});
}

/// @nodoc
class __$$WeatherStateImplCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$WeatherStateImpl>
    implements _$$WeatherStateImplCopyWith<$Res> {
  __$$WeatherStateImplCopyWithImpl(
      _$WeatherStateImpl _value, $Res Function(_$WeatherStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorMessage = null,
    Object? city = null,
    Object? country = null,
    Object? tempCelcius = null,
    Object? tempFahrenheit = null,
  }) {
    return _then(_$WeatherStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      tempCelcius: null == tempCelcius
          ? _value.tempCelcius
          : tempCelcius // ignore: cast_nullable_to_non_nullable
              as double,
      tempFahrenheit: null == tempFahrenheit
          ? _value.tempFahrenheit
          : tempFahrenheit // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$WeatherStateImpl implements _WeatherState {
  const _$WeatherStateImpl(
      {this.status = StateStatus.initial,
      this.errorMessage = '',
      this.city = '',
      this.country = '',
      this.tempCelcius = 0,
      this.tempFahrenheit = 0});

  @override
  @JsonKey()
  final StateStatus status;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final String city;
  @override
  @JsonKey()
  final String country;
  @override
  @JsonKey()
  final double tempCelcius;
  @override
  @JsonKey()
  final double tempFahrenheit;

  @override
  String toString() {
    return 'WeatherState(status: $status, errorMessage: $errorMessage, city: $city, country: $country, tempCelcius: $tempCelcius, tempFahrenheit: $tempFahrenheit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.tempCelcius, tempCelcius) ||
                other.tempCelcius == tempCelcius) &&
            (identical(other.tempFahrenheit, tempFahrenheit) ||
                other.tempFahrenheit == tempFahrenheit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, errorMessage, city,
      country, tempCelcius, tempFahrenheit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherStateImplCopyWith<_$WeatherStateImpl> get copyWith =>
      __$$WeatherStateImplCopyWithImpl<_$WeatherStateImpl>(this, _$identity);
}

abstract class _WeatherState implements WeatherState {
  const factory _WeatherState(
      {final StateStatus status,
      final String errorMessage,
      final String city,
      final String country,
      final double tempCelcius,
      final double tempFahrenheit}) = _$WeatherStateImpl;

  @override
  StateStatus get status;
  @override
  String get errorMessage;
  @override
  String get city;
  @override
  String get country;
  @override
  double get tempCelcius;
  @override
  double get tempFahrenheit;
  @override
  @JsonKey(ignore: true)
  _$$WeatherStateImplCopyWith<_$WeatherStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

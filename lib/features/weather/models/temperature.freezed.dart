// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'temperature.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Temperature _$TemperatureFromJson(Map<String, dynamic> json) {
  return _Temperature.fromJson(json);
}

/// @nodoc
mixin _$Temperature {
  @JsonKey(name: 'temp_c')
  double get tempCelcius => throw _privateConstructorUsedError;
  @JsonKey(name: 'temp_f')
  double get tempFahrenheit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TemperatureCopyWith<Temperature> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TemperatureCopyWith<$Res> {
  factory $TemperatureCopyWith(
          Temperature value, $Res Function(Temperature) then) =
      _$TemperatureCopyWithImpl<$Res, Temperature>;
  @useResult
  $Res call(
      {@JsonKey(name: 'temp_c') double tempCelcius,
      @JsonKey(name: 'temp_f') double tempFahrenheit});
}

/// @nodoc
class _$TemperatureCopyWithImpl<$Res, $Val extends Temperature>
    implements $TemperatureCopyWith<$Res> {
  _$TemperatureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tempCelcius = null,
    Object? tempFahrenheit = null,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$TemperatureImplCopyWith<$Res>
    implements $TemperatureCopyWith<$Res> {
  factory _$$TemperatureImplCopyWith(
          _$TemperatureImpl value, $Res Function(_$TemperatureImpl) then) =
      __$$TemperatureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'temp_c') double tempCelcius,
      @JsonKey(name: 'temp_f') double tempFahrenheit});
}

/// @nodoc
class __$$TemperatureImplCopyWithImpl<$Res>
    extends _$TemperatureCopyWithImpl<$Res, _$TemperatureImpl>
    implements _$$TemperatureImplCopyWith<$Res> {
  __$$TemperatureImplCopyWithImpl(
      _$TemperatureImpl _value, $Res Function(_$TemperatureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tempCelcius = null,
    Object? tempFahrenheit = null,
  }) {
    return _then(_$TemperatureImpl(
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
@JsonSerializable()
class _$TemperatureImpl extends _Temperature {
  const _$TemperatureImpl(
      {@JsonKey(name: 'temp_c') required this.tempCelcius,
      @JsonKey(name: 'temp_f') required this.tempFahrenheit})
      : super._();

  factory _$TemperatureImpl.fromJson(Map<String, dynamic> json) =>
      _$$TemperatureImplFromJson(json);

  @override
  @JsonKey(name: 'temp_c')
  final double tempCelcius;
  @override
  @JsonKey(name: 'temp_f')
  final double tempFahrenheit;

  @override
  String toString() {
    return 'Temperature(tempCelcius: $tempCelcius, tempFahrenheit: $tempFahrenheit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TemperatureImpl &&
            (identical(other.tempCelcius, tempCelcius) ||
                other.tempCelcius == tempCelcius) &&
            (identical(other.tempFahrenheit, tempFahrenheit) ||
                other.tempFahrenheit == tempFahrenheit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, tempCelcius, tempFahrenheit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TemperatureImplCopyWith<_$TemperatureImpl> get copyWith =>
      __$$TemperatureImplCopyWithImpl<_$TemperatureImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TemperatureImplToJson(
      this,
    );
  }
}

abstract class _Temperature extends Temperature {
  const factory _Temperature(
          {@JsonKey(name: 'temp_c') required final double tempCelcius,
          @JsonKey(name: 'temp_f') required final double tempFahrenheit}) =
      _$TemperatureImpl;
  const _Temperature._() : super._();

  factory _Temperature.fromJson(Map<String, dynamic> json) =
      _$TemperatureImpl.fromJson;

  @override
  @JsonKey(name: 'temp_c')
  double get tempCelcius;
  @override
  @JsonKey(name: 'temp_f')
  double get tempFahrenheit;
  @override
  @JsonKey(ignore: true)
  _$$TemperatureImplCopyWith<_$TemperatureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

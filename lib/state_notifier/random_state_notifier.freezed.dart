// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'random_state_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RandomStateTearOff {
  const _$RandomStateTearOff();

  _RandomState call({int min = 0, int max = 0, int? generatedNumber}) {
    return _RandomState(
      min: min,
      max: max,
      generatedNumber: generatedNumber,
    );
  }
}

/// @nodoc
const $RandomState = _$RandomStateTearOff();

/// @nodoc
mixin _$RandomState {
  int get min => throw _privateConstructorUsedError;
  int get max => throw _privateConstructorUsedError;
  int? get generatedNumber => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RandomStateCopyWith<RandomState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RandomStateCopyWith<$Res> {
  factory $RandomStateCopyWith(
          RandomState value, $Res Function(RandomState) then) =
      _$RandomStateCopyWithImpl<$Res>;
  $Res call({int min, int max, int? generatedNumber});
}

/// @nodoc
class _$RandomStateCopyWithImpl<$Res> implements $RandomStateCopyWith<$Res> {
  _$RandomStateCopyWithImpl(this._value, this._then);

  final RandomState _value;
  // ignore: unused_field
  final $Res Function(RandomState) _then;

  @override
  $Res call({
    Object? min = freezed,
    Object? max = freezed,
    Object? generatedNumber = freezed,
  }) {
    return _then(_value.copyWith(
      min: min == freezed
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as int,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
      generatedNumber: generatedNumber == freezed
          ? _value.generatedNumber
          : generatedNumber // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$RandomStateCopyWith<$Res>
    implements $RandomStateCopyWith<$Res> {
  factory _$RandomStateCopyWith(
          _RandomState value, $Res Function(_RandomState) then) =
      __$RandomStateCopyWithImpl<$Res>;
  @override
  $Res call({int min, int max, int? generatedNumber});
}

/// @nodoc
class __$RandomStateCopyWithImpl<$Res> extends _$RandomStateCopyWithImpl<$Res>
    implements _$RandomStateCopyWith<$Res> {
  __$RandomStateCopyWithImpl(
      _RandomState _value, $Res Function(_RandomState) _then)
      : super(_value, (v) => _then(v as _RandomState));

  @override
  _RandomState get _value => super._value as _RandomState;

  @override
  $Res call({
    Object? min = freezed,
    Object? max = freezed,
    Object? generatedNumber = freezed,
  }) {
    return _then(_RandomState(
      min: min == freezed
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as int,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
      generatedNumber: generatedNumber == freezed
          ? _value.generatedNumber
          : generatedNumber // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_RandomState extends _RandomState {
  const _$_RandomState({this.min = 0, this.max = 0, this.generatedNumber})
      : super._();

  @JsonKey(defaultValue: 0)
  @override
  final int min;
  @JsonKey(defaultValue: 0)
  @override
  final int max;
  @override
  final int? generatedNumber;

  @override
  String toString() {
    return 'RandomState(min: $min, max: $max, generatedNumber: $generatedNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RandomState &&
            (identical(other.min, min) ||
                const DeepCollectionEquality().equals(other.min, min)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)) &&
            (identical(other.generatedNumber, generatedNumber) ||
                const DeepCollectionEquality()
                    .equals(other.generatedNumber, generatedNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(min) ^
      const DeepCollectionEquality().hash(max) ^
      const DeepCollectionEquality().hash(generatedNumber);

  @JsonKey(ignore: true)
  @override
  _$RandomStateCopyWith<_RandomState> get copyWith =>
      __$RandomStateCopyWithImpl<_RandomState>(this, _$identity);
}

abstract class _RandomState extends RandomState {
  const factory _RandomState({int min, int max, int? generatedNumber}) =
      _$_RandomState;
  const _RandomState._() : super._();

  @override
  int get min => throw _privateConstructorUsedError;
  @override
  int get max => throw _privateConstructorUsedError;
  @override
  int? get generatedNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RandomStateCopyWith<_RandomState> get copyWith =>
      throw _privateConstructorUsedError;
}

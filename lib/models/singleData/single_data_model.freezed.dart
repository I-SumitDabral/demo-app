// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'single_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SingleData _$SingleDataFromJson(Map<String, dynamic> json) {
  return _SingleData.fromJson(json);
}

/// @nodoc
mixin _$SingleData {
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SingleDataCopyWith<SingleData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleDataCopyWith<$Res> {
  factory $SingleDataCopyWith(
          SingleData value, $Res Function(SingleData) then) =
      _$SingleDataCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$SingleDataCopyWithImpl<$Res> implements $SingleDataCopyWith<$Res> {
  _$SingleDataCopyWithImpl(this._value, this._then);

  final SingleData _value;
  // ignore: unused_field
  final $Res Function(SingleData) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_SingleDataCopyWith<$Res>
    implements $SingleDataCopyWith<$Res> {
  factory _$$_SingleDataCopyWith(
          _$_SingleData value, $Res Function(_$_SingleData) then) =
      __$$_SingleDataCopyWithImpl<$Res>;
  @override
  $Res call({String value});
}

/// @nodoc
class __$$_SingleDataCopyWithImpl<$Res> extends _$SingleDataCopyWithImpl<$Res>
    implements _$$_SingleDataCopyWith<$Res> {
  __$$_SingleDataCopyWithImpl(
      _$_SingleData _value, $Res Function(_$_SingleData) _then)
      : super(_value, (v) => _then(v as _$_SingleData));

  @override
  _$_SingleData get _value => super._value as _$_SingleData;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_SingleData(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SingleData extends _SingleData {
  const _$_SingleData({required this.value}) : super._();

  factory _$_SingleData.fromJson(Map<String, dynamic> json) =>
      _$$_SingleDataFromJson(json);

  @override
  final String value;

  @override
  String toString() {
    return 'SingleData(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SingleData &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_SingleDataCopyWith<_$_SingleData> get copyWith =>
      __$$_SingleDataCopyWithImpl<_$_SingleData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SingleDataToJson(
      this,
    );
  }
}

abstract class _SingleData extends SingleData {
  const factory _SingleData({required final String value}) = _$_SingleData;
  const _SingleData._() : super._();

  factory _SingleData.fromJson(Map<String, dynamic> json) =
      _$_SingleData.fromJson;

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_SingleDataCopyWith<_$_SingleData> get copyWith =>
      throw _privateConstructorUsedError;
}

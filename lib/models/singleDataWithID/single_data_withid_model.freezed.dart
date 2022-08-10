// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'single_data_withid_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SingleDataWithID _$SingleDataWithIDFromJson(Map<String, dynamic> json) {
  return _SingleDataWithID.fromJson(json);
}

/// @nodoc
mixin _$SingleDataWithID {
  String get value => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SingleDataWithIDCopyWith<SingleDataWithID> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleDataWithIDCopyWith<$Res> {
  factory $SingleDataWithIDCopyWith(
          SingleDataWithID value, $Res Function(SingleDataWithID) then) =
      _$SingleDataWithIDCopyWithImpl<$Res>;
  $Res call({String value, int id});
}

/// @nodoc
class _$SingleDataWithIDCopyWithImpl<$Res>
    implements $SingleDataWithIDCopyWith<$Res> {
  _$SingleDataWithIDCopyWithImpl(this._value, this._then);

  final SingleDataWithID _value;
  // ignore: unused_field
  final $Res Function(SingleDataWithID) _then;

  @override
  $Res call({
    Object? value = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_SingleDataWithIDCopyWith<$Res>
    implements $SingleDataWithIDCopyWith<$Res> {
  factory _$$_SingleDataWithIDCopyWith(
          _$_SingleDataWithID value, $Res Function(_$_SingleDataWithID) then) =
      __$$_SingleDataWithIDCopyWithImpl<$Res>;
  @override
  $Res call({String value, int id});
}

/// @nodoc
class __$$_SingleDataWithIDCopyWithImpl<$Res>
    extends _$SingleDataWithIDCopyWithImpl<$Res>
    implements _$$_SingleDataWithIDCopyWith<$Res> {
  __$$_SingleDataWithIDCopyWithImpl(
      _$_SingleDataWithID _value, $Res Function(_$_SingleDataWithID) _then)
      : super(_value, (v) => _then(v as _$_SingleDataWithID));

  @override
  _$_SingleDataWithID get _value => super._value as _$_SingleDataWithID;

  @override
  $Res call({
    Object? value = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_SingleDataWithID(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SingleDataWithID extends _SingleDataWithID {
  const _$_SingleDataWithID({required this.value, required this.id})
      : super._();

  factory _$_SingleDataWithID.fromJson(Map<String, dynamic> json) =>
      _$$_SingleDataWithIDFromJson(json);

  @override
  final String value;
  @override
  final int id;

  @override
  String toString() {
    return 'SingleDataWithID(value: $value, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SingleDataWithID &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$_SingleDataWithIDCopyWith<_$_SingleDataWithID> get copyWith =>
      __$$_SingleDataWithIDCopyWithImpl<_$_SingleDataWithID>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SingleDataWithIDToJson(
      this,
    );
  }
}

abstract class _SingleDataWithID extends SingleDataWithID {
  const factory _SingleDataWithID(
      {required final String value,
      required final int id}) = _$_SingleDataWithID;
  const _SingleDataWithID._() : super._();

  factory _SingleDataWithID.fromJson(Map<String, dynamic> json) =
      _$_SingleDataWithID.fromJson;

  @override
  String get value;
  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$_SingleDataWithIDCopyWith<_$_SingleDataWithID> get copyWith =>
      throw _privateConstructorUsedError;
}

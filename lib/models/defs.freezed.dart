// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'defs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DefsModel _$DefsModelFromJson(Map<String, dynamic> json) {
  return _DefsModel.fromJson(json);
}

/// @nodoc
mixin _$DefsModel {
  String? get id => throw _privateConstructorUsedError;
  String? get pin => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DefsModelCopyWith<DefsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DefsModelCopyWith<$Res> {
  factory $DefsModelCopyWith(DefsModel value, $Res Function(DefsModel) then) =
      _$DefsModelCopyWithImpl<$Res, DefsModel>;
  @useResult
  $Res call({String? id, String? pin});
}

/// @nodoc
class _$DefsModelCopyWithImpl<$Res, $Val extends DefsModel>
    implements $DefsModelCopyWith<$Res> {
  _$DefsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? pin = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      pin: freezed == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DefsModelCopyWith<$Res> implements $DefsModelCopyWith<$Res> {
  factory _$$_DefsModelCopyWith(
          _$_DefsModel value, $Res Function(_$_DefsModel) then) =
      __$$_DefsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? pin});
}

/// @nodoc
class __$$_DefsModelCopyWithImpl<$Res>
    extends _$DefsModelCopyWithImpl<$Res, _$_DefsModel>
    implements _$$_DefsModelCopyWith<$Res> {
  __$$_DefsModelCopyWithImpl(
      _$_DefsModel _value, $Res Function(_$_DefsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? pin = freezed,
  }) {
    return _then(_$_DefsModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      pin: freezed == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DefsModel implements _DefsModel {
  const _$_DefsModel({this.id = '', this.pin = ''});

  factory _$_DefsModel.fromJson(Map<String, dynamic> json) =>
      _$$_DefsModelFromJson(json);

  @override
  @JsonKey()
  final String? id;
  @override
  @JsonKey()
  final String? pin;

  @override
  String toString() {
    return 'DefsModel(id: $id, pin: $pin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DefsModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.pin, pin) || other.pin == pin));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, pin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DefsModelCopyWith<_$_DefsModel> get copyWith =>
      __$$_DefsModelCopyWithImpl<_$_DefsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DefsModelToJson(
      this,
    );
  }
}

abstract class _DefsModel implements DefsModel {
  const factory _DefsModel({final String? id, final String? pin}) =
      _$_DefsModel;

  factory _DefsModel.fromJson(Map<String, dynamic> json) =
      _$_DefsModel.fromJson;

  @override
  String? get id;
  @override
  String? get pin;
  @override
  @JsonKey(ignore: true)
  _$$_DefsModelCopyWith<_$_DefsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

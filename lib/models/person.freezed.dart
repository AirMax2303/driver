// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'person.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PersonModel _$PersonModelFromJson(Map<String, dynamic> json) {
  return _PersonModel.fromJson(json);
}

/// @nodoc
mixin _$PersonModel {
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  int? get age => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonModelCopyWith<PersonModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonModelCopyWith<$Res> {
  factory $PersonModelCopyWith(
          PersonModel value, $Res Function(PersonModel) then) =
      _$PersonModelCopyWithImpl<$Res, PersonModel>;
  @useResult
  $Res call({String? firstName, String? lastName, int? age});
}

/// @nodoc
class _$PersonModelCopyWithImpl<$Res, $Val extends PersonModel>
    implements $PersonModelCopyWith<$Res> {
  _$PersonModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? age = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PersonModelCopyWith<$Res>
    implements $PersonModelCopyWith<$Res> {
  factory _$$_PersonModelCopyWith(
          _$_PersonModel value, $Res Function(_$_PersonModel) then) =
      __$$_PersonModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? firstName, String? lastName, int? age});
}

/// @nodoc
class __$$_PersonModelCopyWithImpl<$Res>
    extends _$PersonModelCopyWithImpl<$Res, _$_PersonModel>
    implements _$$_PersonModelCopyWith<$Res> {
  __$$_PersonModelCopyWithImpl(
      _$_PersonModel _value, $Res Function(_$_PersonModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? age = freezed,
  }) {
    return _then(_$_PersonModel(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PersonModel implements _PersonModel {
  _$_PersonModel({this.firstName, this.lastName, this.age});

  factory _$_PersonModel.fromJson(Map<String, dynamic> json) =>
      _$$_PersonModelFromJson(json);

  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final int? age;

  @override
  String toString() {
    return 'PersonModel(firstName: $firstName, lastName: $lastName, age: $age)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PersonModel &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.age, age) || other.age == age));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName, age);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PersonModelCopyWith<_$_PersonModel> get copyWith =>
      __$$_PersonModelCopyWithImpl<_$_PersonModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PersonModelToJson(
      this,
    );
  }
}

abstract class _PersonModel implements PersonModel {
  factory _PersonModel(
      {final String? firstName,
      final String? lastName,
      final int? age}) = _$_PersonModel;

  factory _PersonModel.fromJson(Map<String, dynamic> json) =
      _$_PersonModel.fromJson;

  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  int? get age;
  @override
  @JsonKey(ignore: true)
  _$$_PersonModelCopyWith<_$_PersonModel> get copyWith =>
      throw _privateConstructorUsedError;
}

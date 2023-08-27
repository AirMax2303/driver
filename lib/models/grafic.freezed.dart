// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'grafic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GraficModel _$GraficModelFromJson(Map<String, dynamic> json) {
  return _GraficModel.fromJson(json);
}

/// @nodoc
mixin _$GraficModel {
  String get clientid => throw _privateConstructorUsedError;
  String get gdayweek => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get gfrom => throw _privateConstructorUsedError;
  String get gto => throw _privateConstructorUsedError;
  String get gmonth => throw _privateConstructorUsedError;
  String get gtime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GraficModelCopyWith<GraficModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GraficModelCopyWith<$Res> {
  factory $GraficModelCopyWith(
          GraficModel value, $Res Function(GraficModel) then) =
      _$GraficModelCopyWithImpl<$Res, GraficModel>;
  @useResult
  $Res call(
      {String clientid,
      String gdayweek,
      String name,
      String gfrom,
      String gto,
      String gmonth,
      String gtime});
}

/// @nodoc
class _$GraficModelCopyWithImpl<$Res, $Val extends GraficModel>
    implements $GraficModelCopyWith<$Res> {
  _$GraficModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientid = null,
    Object? gdayweek = null,
    Object? name = null,
    Object? gfrom = null,
    Object? gto = null,
    Object? gmonth = null,
    Object? gtime = null,
  }) {
    return _then(_value.copyWith(
      clientid: null == clientid
          ? _value.clientid
          : clientid // ignore: cast_nullable_to_non_nullable
              as String,
      gdayweek: null == gdayweek
          ? _value.gdayweek
          : gdayweek // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      gfrom: null == gfrom
          ? _value.gfrom
          : gfrom // ignore: cast_nullable_to_non_nullable
              as String,
      gto: null == gto
          ? _value.gto
          : gto // ignore: cast_nullable_to_non_nullable
              as String,
      gmonth: null == gmonth
          ? _value.gmonth
          : gmonth // ignore: cast_nullable_to_non_nullable
              as String,
      gtime: null == gtime
          ? _value.gtime
          : gtime // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GraficModelCopyWith<$Res>
    implements $GraficModelCopyWith<$Res> {
  factory _$$_GraficModelCopyWith(
          _$_GraficModel value, $Res Function(_$_GraficModel) then) =
      __$$_GraficModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String clientid,
      String gdayweek,
      String name,
      String gfrom,
      String gto,
      String gmonth,
      String gtime});
}

/// @nodoc
class __$$_GraficModelCopyWithImpl<$Res>
    extends _$GraficModelCopyWithImpl<$Res, _$_GraficModel>
    implements _$$_GraficModelCopyWith<$Res> {
  __$$_GraficModelCopyWithImpl(
      _$_GraficModel _value, $Res Function(_$_GraficModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientid = null,
    Object? gdayweek = null,
    Object? name = null,
    Object? gfrom = null,
    Object? gto = null,
    Object? gmonth = null,
    Object? gtime = null,
  }) {
    return _then(_$_GraficModel(
      clientid: null == clientid
          ? _value.clientid
          : clientid // ignore: cast_nullable_to_non_nullable
              as String,
      gdayweek: null == gdayweek
          ? _value.gdayweek
          : gdayweek // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      gfrom: null == gfrom
          ? _value.gfrom
          : gfrom // ignore: cast_nullable_to_non_nullable
              as String,
      gto: null == gto
          ? _value.gto
          : gto // ignore: cast_nullable_to_non_nullable
              as String,
      gmonth: null == gmonth
          ? _value.gmonth
          : gmonth // ignore: cast_nullable_to_non_nullable
              as String,
      gtime: null == gtime
          ? _value.gtime
          : gtime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GraficModel implements _GraficModel {
  const _$_GraficModel(
      {this.clientid = '',
      this.gdayweek = '1',
      this.name = '',
      this.gfrom = '',
      this.gto = '',
      this.gmonth = '',
      this.gtime = ''});

  factory _$_GraficModel.fromJson(Map<String, dynamic> json) =>
      _$$_GraficModelFromJson(json);

  @override
  @JsonKey()
  final String clientid;
  @override
  @JsonKey()
  final String gdayweek;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String gfrom;
  @override
  @JsonKey()
  final String gto;
  @override
  @JsonKey()
  final String gmonth;
  @override
  @JsonKey()
  final String gtime;

  @override
  String toString() {
    return 'GraficModel(clientid: $clientid, gdayweek: $gdayweek, name: $name, gfrom: $gfrom, gto: $gto, gmonth: $gmonth, gtime: $gtime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GraficModel &&
            (identical(other.clientid, clientid) ||
                other.clientid == clientid) &&
            (identical(other.gdayweek, gdayweek) ||
                other.gdayweek == gdayweek) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.gfrom, gfrom) || other.gfrom == gfrom) &&
            (identical(other.gto, gto) || other.gto == gto) &&
            (identical(other.gmonth, gmonth) || other.gmonth == gmonth) &&
            (identical(other.gtime, gtime) || other.gtime == gtime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, clientid, gdayweek, name, gfrom, gto, gmonth, gtime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GraficModelCopyWith<_$_GraficModel> get copyWith =>
      __$$_GraficModelCopyWithImpl<_$_GraficModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GraficModelToJson(
      this,
    );
  }
}

abstract class _GraficModel implements GraficModel {
  const factory _GraficModel(
      {final String clientid,
      final String gdayweek,
      final String name,
      final String gfrom,
      final String gto,
      final String gmonth,
      final String gtime}) = _$_GraficModel;

  factory _GraficModel.fromJson(Map<String, dynamic> json) =
      _$_GraficModel.fromJson;

  @override
  String get clientid;
  @override
  String get gdayweek;
  @override
  String get name;
  @override
  String get gfrom;
  @override
  String get gto;
  @override
  String get gmonth;
  @override
  String get gtime;
  @override
  @JsonKey(ignore: true)
  _$$_GraficModelCopyWith<_$_GraficModel> get copyWith =>
      throw _privateConstructorUsedError;
}

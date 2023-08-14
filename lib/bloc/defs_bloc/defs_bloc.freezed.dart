// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'defs_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DefsEvent {
  String get key => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String key) initial,
    required TResult Function(String key, DefsModel defs) saveDefs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String key)? initial,
    TResult? Function(String key, DefsModel defs)? saveDefs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String key)? initial,
    TResult Function(String key, DefsModel defs)? saveDefs,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initial,
    required TResult Function(_SaveDefsEvent value) saveDefs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initial,
    TResult? Function(_SaveDefsEvent value)? saveDefs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_SaveDefsEvent value)? saveDefs,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DefsEventCopyWith<DefsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DefsEventCopyWith<$Res> {
  factory $DefsEventCopyWith(DefsEvent value, $Res Function(DefsEvent) then) =
      _$DefsEventCopyWithImpl<$Res, DefsEvent>;
  @useResult
  $Res call({String key});
}

/// @nodoc
class _$DefsEventCopyWithImpl<$Res, $Val extends DefsEvent>
    implements $DefsEventCopyWith<$Res> {
  _$DefsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialEventCopyWith<$Res>
    implements $DefsEventCopyWith<$Res> {
  factory _$$_InitialEventCopyWith(
          _$_InitialEvent value, $Res Function(_$_InitialEvent) then) =
      __$$_InitialEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key});
}

/// @nodoc
class __$$_InitialEventCopyWithImpl<$Res>
    extends _$DefsEventCopyWithImpl<$Res, _$_InitialEvent>
    implements _$$_InitialEventCopyWith<$Res> {
  __$$_InitialEventCopyWithImpl(
      _$_InitialEvent _value, $Res Function(_$_InitialEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
  }) {
    return _then(_$_InitialEvent(
      null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InitialEvent implements _InitialEvent {
  const _$_InitialEvent(this.key);

  @override
  final String key;

  @override
  String toString() {
    return 'DefsEvent.initial(key: $key)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitialEvent &&
            (identical(other.key, key) || other.key == key));
  }

  @override
  int get hashCode => Object.hash(runtimeType, key);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialEventCopyWith<_$_InitialEvent> get copyWith =>
      __$$_InitialEventCopyWithImpl<_$_InitialEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String key) initial,
    required TResult Function(String key, DefsModel defs) saveDefs,
  }) {
    return initial(key);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String key)? initial,
    TResult? Function(String key, DefsModel defs)? saveDefs,
  }) {
    return initial?.call(key);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String key)? initial,
    TResult Function(String key, DefsModel defs)? saveDefs,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(key);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initial,
    required TResult Function(_SaveDefsEvent value) saveDefs,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initial,
    TResult? Function(_SaveDefsEvent value)? saveDefs,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_SaveDefsEvent value)? saveDefs,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialEvent implements DefsEvent {
  const factory _InitialEvent(final String key) = _$_InitialEvent;

  @override
  String get key;
  @override
  @JsonKey(ignore: true)
  _$$_InitialEventCopyWith<_$_InitialEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SaveDefsEventCopyWith<$Res>
    implements $DefsEventCopyWith<$Res> {
  factory _$$_SaveDefsEventCopyWith(
          _$_SaveDefsEvent value, $Res Function(_$_SaveDefsEvent) then) =
      __$$_SaveDefsEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, DefsModel defs});

  $DefsModelCopyWith<$Res> get defs;
}

/// @nodoc
class __$$_SaveDefsEventCopyWithImpl<$Res>
    extends _$DefsEventCopyWithImpl<$Res, _$_SaveDefsEvent>
    implements _$$_SaveDefsEventCopyWith<$Res> {
  __$$_SaveDefsEventCopyWithImpl(
      _$_SaveDefsEvent _value, $Res Function(_$_SaveDefsEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? defs = null,
  }) {
    return _then(_$_SaveDefsEvent(
      null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      null == defs
          ? _value.defs
          : defs // ignore: cast_nullable_to_non_nullable
              as DefsModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DefsModelCopyWith<$Res> get defs {
    return $DefsModelCopyWith<$Res>(_value.defs, (value) {
      return _then(_value.copyWith(defs: value));
    });
  }
}

/// @nodoc

class _$_SaveDefsEvent implements _SaveDefsEvent {
  const _$_SaveDefsEvent(this.key, this.defs);

  @override
  final String key;
  @override
  final DefsModel defs;

  @override
  String toString() {
    return 'DefsEvent.saveDefs(key: $key, defs: $defs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaveDefsEvent &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.defs, defs) || other.defs == defs));
  }

  @override
  int get hashCode => Object.hash(runtimeType, key, defs);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SaveDefsEventCopyWith<_$_SaveDefsEvent> get copyWith =>
      __$$_SaveDefsEventCopyWithImpl<_$_SaveDefsEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String key) initial,
    required TResult Function(String key, DefsModel defs) saveDefs,
  }) {
    return saveDefs(key, defs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String key)? initial,
    TResult? Function(String key, DefsModel defs)? saveDefs,
  }) {
    return saveDefs?.call(key, defs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String key)? initial,
    TResult Function(String key, DefsModel defs)? saveDefs,
    required TResult orElse(),
  }) {
    if (saveDefs != null) {
      return saveDefs(key, defs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initial,
    required TResult Function(_SaveDefsEvent value) saveDefs,
  }) {
    return saveDefs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initial,
    TResult? Function(_SaveDefsEvent value)? saveDefs,
  }) {
    return saveDefs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_SaveDefsEvent value)? saveDefs,
    required TResult orElse(),
  }) {
    if (saveDefs != null) {
      return saveDefs(this);
    }
    return orElse();
  }
}

abstract class _SaveDefsEvent implements DefsEvent {
  const factory _SaveDefsEvent(final String key, final DefsModel defs) =
      _$_SaveDefsEvent;

  @override
  String get key;
  DefsModel get defs;
  @override
  @JsonKey(ignore: true)
  _$$_SaveDefsEventCopyWith<_$_SaveDefsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DefsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(DefsModel? defs) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(DefsModel? defs)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(DefsModel? defs)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_DataState value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_DataState value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_DataState value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DefsStateCopyWith<$Res> {
  factory $DefsStateCopyWith(DefsState value, $Res Function(DefsState) then) =
      _$DefsStateCopyWithImpl<$Res, DefsState>;
}

/// @nodoc
class _$DefsStateCopyWithImpl<$Res, $Val extends DefsState>
    implements $DefsStateCopyWith<$Res> {
  _$DefsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialStateCopyWith<$Res> {
  factory _$$_InitialStateCopyWith(
          _$_InitialState value, $Res Function(_$_InitialState) then) =
      __$$_InitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialStateCopyWithImpl<$Res>
    extends _$DefsStateCopyWithImpl<$Res, _$_InitialState>
    implements _$$_InitialStateCopyWith<$Res> {
  __$$_InitialStateCopyWithImpl(
      _$_InitialState _value, $Res Function(_$_InitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InitialState implements _InitialState {
  const _$_InitialState();

  @override
  String toString() {
    return 'DefsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(DefsModel? defs) data,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(DefsModel? defs)? data,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(DefsModel? defs)? data,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_DataState value) data,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_DataState value)? data,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_DataState value)? data,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialState implements DefsState {
  const factory _InitialState() = _$_InitialState;
}

/// @nodoc
abstract class _$$_LoadingStateCopyWith<$Res> {
  factory _$$_LoadingStateCopyWith(
          _$_LoadingState value, $Res Function(_$_LoadingState) then) =
      __$$_LoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingStateCopyWithImpl<$Res>
    extends _$DefsStateCopyWithImpl<$Res, _$_LoadingState>
    implements _$$_LoadingStateCopyWith<$Res> {
  __$$_LoadingStateCopyWithImpl(
      _$_LoadingState _value, $Res Function(_$_LoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadingState implements _LoadingState {
  const _$_LoadingState();

  @override
  String toString() {
    return 'DefsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(DefsModel? defs) data,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(DefsModel? defs)? data,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(DefsModel? defs)? data,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_DataState value) data,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_DataState value)? data,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_DataState value)? data,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements DefsState {
  const factory _LoadingState() = _$_LoadingState;
}

/// @nodoc
abstract class _$$_DataStateCopyWith<$Res> {
  factory _$$_DataStateCopyWith(
          _$_DataState value, $Res Function(_$_DataState) then) =
      __$$_DataStateCopyWithImpl<$Res>;
  @useResult
  $Res call({DefsModel? defs});

  $DefsModelCopyWith<$Res>? get defs;
}

/// @nodoc
class __$$_DataStateCopyWithImpl<$Res>
    extends _$DefsStateCopyWithImpl<$Res, _$_DataState>
    implements _$$_DataStateCopyWith<$Res> {
  __$$_DataStateCopyWithImpl(
      _$_DataState _value, $Res Function(_$_DataState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? defs = freezed,
  }) {
    return _then(_$_DataState(
      defs: freezed == defs
          ? _value.defs
          : defs // ignore: cast_nullable_to_non_nullable
              as DefsModel?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DefsModelCopyWith<$Res>? get defs {
    if (_value.defs == null) {
      return null;
    }

    return $DefsModelCopyWith<$Res>(_value.defs!, (value) {
      return _then(_value.copyWith(defs: value));
    });
  }
}

/// @nodoc

class _$_DataState implements _DataState {
  const _$_DataState({required this.defs});

  @override
  final DefsModel? defs;

  @override
  String toString() {
    return 'DefsState.data(defs: $defs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataState &&
            (identical(other.defs, defs) || other.defs == defs));
  }

  @override
  int get hashCode => Object.hash(runtimeType, defs);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataStateCopyWith<_$_DataState> get copyWith =>
      __$$_DataStateCopyWithImpl<_$_DataState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(DefsModel? defs) data,
  }) {
    return data(defs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(DefsModel? defs)? data,
  }) {
    return data?.call(defs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(DefsModel? defs)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(defs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_DataState value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_DataState value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_DataState value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _DataState implements DefsState {
  const factory _DataState({required final DefsModel? defs}) = _$_DataState;

  DefsModel? get defs;
  @JsonKey(ignore: true)
  _$$_DataStateCopyWith<_$_DataState> get copyWith =>
      throw _privateConstructorUsedError;
}

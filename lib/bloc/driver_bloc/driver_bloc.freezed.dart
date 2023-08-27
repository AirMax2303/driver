// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'driver_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DriverEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(DriverModel value) addDriver,
    required TResult Function(String id) getDriver,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(DriverModel value)? addDriver,
    TResult? Function(String id)? getDriver,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DriverModel value)? addDriver,
    TResult Function(String id)? getDriver,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initial,
    required TResult Function(_AddDriverEvent value) addDriver,
    required TResult Function(_GetDriverEvent value) getDriver,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initial,
    TResult? Function(_AddDriverEvent value)? addDriver,
    TResult? Function(_GetDriverEvent value)? getDriver,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_AddDriverEvent value)? addDriver,
    TResult Function(_GetDriverEvent value)? getDriver,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverEventCopyWith<$Res> {
  factory $DriverEventCopyWith(
          DriverEvent value, $Res Function(DriverEvent) then) =
      _$DriverEventCopyWithImpl<$Res, DriverEvent>;
}

/// @nodoc
class _$DriverEventCopyWithImpl<$Res, $Val extends DriverEvent>
    implements $DriverEventCopyWith<$Res> {
  _$DriverEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialEventCopyWith<$Res> {
  factory _$$_InitialEventCopyWith(
          _$_InitialEvent value, $Res Function(_$_InitialEvent) then) =
      __$$_InitialEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialEventCopyWithImpl<$Res>
    extends _$DriverEventCopyWithImpl<$Res, _$_InitialEvent>
    implements _$$_InitialEventCopyWith<$Res> {
  __$$_InitialEventCopyWithImpl(
      _$_InitialEvent _value, $Res Function(_$_InitialEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InitialEvent implements _InitialEvent {
  const _$_InitialEvent();

  @override
  String toString() {
    return 'DriverEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InitialEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(DriverModel value) addDriver,
    required TResult Function(String id) getDriver,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(DriverModel value)? addDriver,
    TResult? Function(String id)? getDriver,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DriverModel value)? addDriver,
    TResult Function(String id)? getDriver,
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
    required TResult Function(_InitialEvent value) initial,
    required TResult Function(_AddDriverEvent value) addDriver,
    required TResult Function(_GetDriverEvent value) getDriver,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initial,
    TResult? Function(_AddDriverEvent value)? addDriver,
    TResult? Function(_GetDriverEvent value)? getDriver,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_AddDriverEvent value)? addDriver,
    TResult Function(_GetDriverEvent value)? getDriver,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialEvent implements DriverEvent {
  const factory _InitialEvent() = _$_InitialEvent;
}

/// @nodoc
abstract class _$$_AddDriverEventCopyWith<$Res> {
  factory _$$_AddDriverEventCopyWith(
          _$_AddDriverEvent value, $Res Function(_$_AddDriverEvent) then) =
      __$$_AddDriverEventCopyWithImpl<$Res>;
  @useResult
  $Res call({DriverModel value});

  $DriverModelCopyWith<$Res> get value;
}

/// @nodoc
class __$$_AddDriverEventCopyWithImpl<$Res>
    extends _$DriverEventCopyWithImpl<$Res, _$_AddDriverEvent>
    implements _$$_AddDriverEventCopyWith<$Res> {
  __$$_AddDriverEventCopyWithImpl(
      _$_AddDriverEvent _value, $Res Function(_$_AddDriverEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_AddDriverEvent(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as DriverModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DriverModelCopyWith<$Res> get value {
    return $DriverModelCopyWith<$Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value));
    });
  }
}

/// @nodoc

class _$_AddDriverEvent implements _AddDriverEvent {
  const _$_AddDriverEvent(this.value);

  @override
  final DriverModel value;

  @override
  String toString() {
    return 'DriverEvent.addDriver(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddDriverEvent &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddDriverEventCopyWith<_$_AddDriverEvent> get copyWith =>
      __$$_AddDriverEventCopyWithImpl<_$_AddDriverEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(DriverModel value) addDriver,
    required TResult Function(String id) getDriver,
  }) {
    return addDriver(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(DriverModel value)? addDriver,
    TResult? Function(String id)? getDriver,
  }) {
    return addDriver?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DriverModel value)? addDriver,
    TResult Function(String id)? getDriver,
    required TResult orElse(),
  }) {
    if (addDriver != null) {
      return addDriver(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initial,
    required TResult Function(_AddDriverEvent value) addDriver,
    required TResult Function(_GetDriverEvent value) getDriver,
  }) {
    return addDriver(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initial,
    TResult? Function(_AddDriverEvent value)? addDriver,
    TResult? Function(_GetDriverEvent value)? getDriver,
  }) {
    return addDriver?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_AddDriverEvent value)? addDriver,
    TResult Function(_GetDriverEvent value)? getDriver,
    required TResult orElse(),
  }) {
    if (addDriver != null) {
      return addDriver(this);
    }
    return orElse();
  }
}

abstract class _AddDriverEvent implements DriverEvent {
  const factory _AddDriverEvent(final DriverModel value) = _$_AddDriverEvent;

  DriverModel get value;
  @JsonKey(ignore: true)
  _$$_AddDriverEventCopyWith<_$_AddDriverEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetDriverEventCopyWith<$Res> {
  factory _$$_GetDriverEventCopyWith(
          _$_GetDriverEvent value, $Res Function(_$_GetDriverEvent) then) =
      __$$_GetDriverEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_GetDriverEventCopyWithImpl<$Res>
    extends _$DriverEventCopyWithImpl<$Res, _$_GetDriverEvent>
    implements _$$_GetDriverEventCopyWith<$Res> {
  __$$_GetDriverEventCopyWithImpl(
      _$_GetDriverEvent _value, $Res Function(_$_GetDriverEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_GetDriverEvent(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetDriverEvent implements _GetDriverEvent {
  const _$_GetDriverEvent(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'DriverEvent.getDriver(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetDriverEvent &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetDriverEventCopyWith<_$_GetDriverEvent> get copyWith =>
      __$$_GetDriverEventCopyWithImpl<_$_GetDriverEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(DriverModel value) addDriver,
    required TResult Function(String id) getDriver,
  }) {
    return getDriver(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(DriverModel value)? addDriver,
    TResult? Function(String id)? getDriver,
  }) {
    return getDriver?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DriverModel value)? addDriver,
    TResult Function(String id)? getDriver,
    required TResult orElse(),
  }) {
    if (getDriver != null) {
      return getDriver(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initial,
    required TResult Function(_AddDriverEvent value) addDriver,
    required TResult Function(_GetDriverEvent value) getDriver,
  }) {
    return getDriver(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initial,
    TResult? Function(_AddDriverEvent value)? addDriver,
    TResult? Function(_GetDriverEvent value)? getDriver,
  }) {
    return getDriver?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initial,
    TResult Function(_AddDriverEvent value)? addDriver,
    TResult Function(_GetDriverEvent value)? getDriver,
    required TResult orElse(),
  }) {
    if (getDriver != null) {
      return getDriver(this);
    }
    return orElse();
  }
}

abstract class _GetDriverEvent implements DriverEvent {
  const factory _GetDriverEvent(final String id) = _$_GetDriverEvent;

  String get id;
  @JsonKey(ignore: true)
  _$$_GetDriverEventCopyWith<_$_GetDriverEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DriverState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<DriverModel> list) data,
    required TResult Function(DriverModel driver) defs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<DriverModel> list)? data,
    TResult? Function(DriverModel driver)? defs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<DriverModel> list)? data,
    TResult Function(DriverModel driver)? defs,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_DataState value) data,
    required TResult Function(_DataDriverState value) defs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_DataState value)? data,
    TResult? Function(_DataDriverState value)? defs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_DataState value)? data,
    TResult Function(_DataDriverState value)? defs,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverStateCopyWith<$Res> {
  factory $DriverStateCopyWith(
          DriverState value, $Res Function(DriverState) then) =
      _$DriverStateCopyWithImpl<$Res, DriverState>;
}

/// @nodoc
class _$DriverStateCopyWithImpl<$Res, $Val extends DriverState>
    implements $DriverStateCopyWith<$Res> {
  _$DriverStateCopyWithImpl(this._value, this._then);

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
    extends _$DriverStateCopyWithImpl<$Res, _$_InitialState>
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
    return 'DriverState.initial()';
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
    required TResult Function(List<DriverModel> list) data,
    required TResult Function(DriverModel driver) defs,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<DriverModel> list)? data,
    TResult? Function(DriverModel driver)? defs,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<DriverModel> list)? data,
    TResult Function(DriverModel driver)? defs,
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
    required TResult Function(_DataDriverState value) defs,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_DataState value)? data,
    TResult? Function(_DataDriverState value)? defs,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_DataState value)? data,
    TResult Function(_DataDriverState value)? defs,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialState implements DriverState {
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
    extends _$DriverStateCopyWithImpl<$Res, _$_LoadingState>
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
    return 'DriverState.loading()';
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
    required TResult Function(List<DriverModel> list) data,
    required TResult Function(DriverModel driver) defs,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<DriverModel> list)? data,
    TResult? Function(DriverModel driver)? defs,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<DriverModel> list)? data,
    TResult Function(DriverModel driver)? defs,
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
    required TResult Function(_DataDriverState value) defs,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_DataState value)? data,
    TResult? Function(_DataDriverState value)? defs,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_DataState value)? data,
    TResult Function(_DataDriverState value)? defs,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements DriverState {
  const factory _LoadingState() = _$_LoadingState;
}

/// @nodoc
abstract class _$$_DataStateCopyWith<$Res> {
  factory _$$_DataStateCopyWith(
          _$_DataState value, $Res Function(_$_DataState) then) =
      __$$_DataStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<DriverModel> list});
}

/// @nodoc
class __$$_DataStateCopyWithImpl<$Res>
    extends _$DriverStateCopyWithImpl<$Res, _$_DataState>
    implements _$$_DataStateCopyWith<$Res> {
  __$$_DataStateCopyWithImpl(
      _$_DataState _value, $Res Function(_$_DataState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$_DataState(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<DriverModel>,
    ));
  }
}

/// @nodoc

class _$_DataState implements _DataState {
  const _$_DataState({required final List<DriverModel> list}) : _list = list;

  final List<DriverModel> _list;
  @override
  List<DriverModel> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'DriverState.data(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataState &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

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
    required TResult Function(List<DriverModel> list) data,
    required TResult Function(DriverModel driver) defs,
  }) {
    return data(list);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<DriverModel> list)? data,
    TResult? Function(DriverModel driver)? defs,
  }) {
    return data?.call(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<DriverModel> list)? data,
    TResult Function(DriverModel driver)? defs,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_DataState value) data,
    required TResult Function(_DataDriverState value) defs,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_DataState value)? data,
    TResult? Function(_DataDriverState value)? defs,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_DataState value)? data,
    TResult Function(_DataDriverState value)? defs,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _DataState implements DriverState {
  const factory _DataState({required final List<DriverModel> list}) =
      _$_DataState;

  List<DriverModel> get list;
  @JsonKey(ignore: true)
  _$$_DataStateCopyWith<_$_DataState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DataDriverStateCopyWith<$Res> {
  factory _$$_DataDriverStateCopyWith(
          _$_DataDriverState value, $Res Function(_$_DataDriverState) then) =
      __$$_DataDriverStateCopyWithImpl<$Res>;
  @useResult
  $Res call({DriverModel driver});

  $DriverModelCopyWith<$Res> get driver;
}

/// @nodoc
class __$$_DataDriverStateCopyWithImpl<$Res>
    extends _$DriverStateCopyWithImpl<$Res, _$_DataDriverState>
    implements _$$_DataDriverStateCopyWith<$Res> {
  __$$_DataDriverStateCopyWithImpl(
      _$_DataDriverState _value, $Res Function(_$_DataDriverState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? driver = null,
  }) {
    return _then(_$_DataDriverState(
      driver: null == driver
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as DriverModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DriverModelCopyWith<$Res> get driver {
    return $DriverModelCopyWith<$Res>(_value.driver, (value) {
      return _then(_value.copyWith(driver: value));
    });
  }
}

/// @nodoc

class _$_DataDriverState implements _DataDriverState {
  const _$_DataDriverState({required this.driver});

  @override
  final DriverModel driver;

  @override
  String toString() {
    return 'DriverState.defs(driver: $driver)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataDriverState &&
            (identical(other.driver, driver) || other.driver == driver));
  }

  @override
  int get hashCode => Object.hash(runtimeType, driver);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataDriverStateCopyWith<_$_DataDriverState> get copyWith =>
      __$$_DataDriverStateCopyWithImpl<_$_DataDriverState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<DriverModel> list) data,
    required TResult Function(DriverModel driver) defs,
  }) {
    return defs(driver);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<DriverModel> list)? data,
    TResult? Function(DriverModel driver)? defs,
  }) {
    return defs?.call(driver);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<DriverModel> list)? data,
    TResult Function(DriverModel driver)? defs,
    required TResult orElse(),
  }) {
    if (defs != null) {
      return defs(driver);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_DataState value) data,
    required TResult Function(_DataDriverState value) defs,
  }) {
    return defs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_DataState value)? data,
    TResult? Function(_DataDriverState value)? defs,
  }) {
    return defs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_DataState value)? data,
    TResult Function(_DataDriverState value)? defs,
    required TResult orElse(),
  }) {
    if (defs != null) {
      return defs(this);
    }
    return orElse();
  }
}

abstract class _DataDriverState implements DriverState {
  const factory _DataDriverState({required final DriverModel driver}) =
      _$_DataDriverState;

  DriverModel get driver;
  @JsonKey(ignore: true)
  _$$_DataDriverStateCopyWith<_$_DataDriverState> get copyWith =>
      throw _privateConstructorUsedError;
}

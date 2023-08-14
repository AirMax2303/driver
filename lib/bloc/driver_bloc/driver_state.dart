part of 'driver_bloc.dart';

@freezed
class DriverState with _$DriverState {
  const factory DriverState.initial() = _InitialState;

  const factory DriverState.loading() = _LoadingState;

  const factory DriverState.data({
    required List<DriverModel>? list,
  }) = _DataState;

  const factory DriverState.defs({
    required DriverModel? driver,
  }) = _DataDriverState;
}

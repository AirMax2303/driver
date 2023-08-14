part of 'driver_bloc.dart';

@freezed
class DriverEvent with _$DriverEvent {
  const factory DriverEvent.initial() = _InitialEvent;
  const factory DriverEvent.addDriver(DriverModel value) = _AddDriverEvent;
  const factory DriverEvent.getDriver(String id) = _GetDriverEvent;
}

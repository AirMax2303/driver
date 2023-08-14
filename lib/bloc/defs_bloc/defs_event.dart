part of 'defs_bloc.dart';

@freezed
class DefsEvent with _$DefsEvent {
  const factory DefsEvent.initial(String key) = _InitialEvent;
  const factory DefsEvent.saveDefs(String key, DefsModel defs) = _SaveDefsEvent;
}

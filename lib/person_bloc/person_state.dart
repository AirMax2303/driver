part of 'person_bloc.dart';

@freezed
class PersonState with _$PersonState {
const factory PersonState.initial() = _InitialState;

  const factory PersonState.loading() = _LoadingState;

  const factory PersonState.data({
    required List<PersonModel>? list,
  }) = _DataState;
}

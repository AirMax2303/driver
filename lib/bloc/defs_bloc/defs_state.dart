part of 'defs_bloc.dart';

@freezed
class DefsState with _$DefsState {
  const factory DefsState.initial() = _InitialState;

  const factory DefsState.loading() = _LoadingState;

  const factory DefsState.data({
    required DefsModel? defs,
  }) = _DataState;
}

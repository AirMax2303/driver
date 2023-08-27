part of 'grafic_bloc.dart';

@freezed
class GraficState with _$GraficState {
  const factory GraficState.initial() = _InitialState;

  const factory GraficState.loading() = _LoadingState;

  const factory GraficState.data({
    required List<GraficElement> list,
  }) = _DataState;
}

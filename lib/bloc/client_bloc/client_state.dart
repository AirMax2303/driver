part of 'client_bloc.dart';
@freezed
class ClientState with _$ClientState {
  const factory ClientState.initial() = _InitialState;

  const factory ClientState.loading() = _LoadingState;

  const factory ClientState.data({
    required List<ClientModel>? list,
  }) = _DataState;
}

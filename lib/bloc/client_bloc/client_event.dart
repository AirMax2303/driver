part of 'client_bloc.dart';

@freezed
class ClientEvent with _$ClientEvent {
  const factory ClientEvent.initial() = _InitialEvent;
  const factory ClientEvent.getClients() = _GetClientsEvent;
  const factory ClientEvent.saveClient() = _SaveClientEvent;
}

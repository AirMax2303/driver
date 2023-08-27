import 'package:uuid/uuid.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../Service/client_service.dart';
import '../../models/client.dart';

part 'client_bloc.freezed.dart';

part 'client_event.dart';

part 'client_state.dart';

class ClientBloc extends Bloc<ClientEvent, ClientState> {
  ClientService service = ClientService();
  List<ClientModel> list = [];
  final uuid = const Uuid();
  ClientModel? client;

  ClientBloc(this.service) : super(const ClientState.initial()) {
    on<_InitialEvent>(_onInitialEvent);
    on<_GetClientsEvent>(_onGetClientsEvent);
    on<_SaveClientEvent>(_onSaveClientEvent);
  }

  void _onInitialEvent(
    _InitialEvent event,
    Emitter<ClientState> emit,
  ) async {
    client = ClientModel(id: uuid.v1());
  }

  void _onSaveClientEvent(
    _SaveClientEvent event,
    Emitter<ClientState> emit,
  ) async {
    service.addClient();
  }

  void _onGetClientsEvent(
    _GetClientsEvent event,
    Emitter<ClientState> emit,
  ) async {
    await service.getClientList().then(
      (value) async {
        list = value;
      },
    );
    emit(
      _DataState(
        list: list,
      ),
    );
  }
}

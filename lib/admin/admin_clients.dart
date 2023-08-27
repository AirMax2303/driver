import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:driver/bloc/client_bloc/client_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';

import '../Service/client_service.dart';
import '../models/client.dart';

class ClientManagement extends StatelessWidget {
  const ClientManagement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ClientBloc>(
      create: (context) => ClientBloc(GetIt.instance.get<ClientService>())..add(const ClientEvent.getClients()),
      child: BlocConsumer<ClientBloc, ClientState>(listener: (context, state) {
        state.mapOrNull();
      }, builder: (context, state) {
        return state.maybeMap(
          loading: (_) => const CircularProgressIndicator(),
          data: (data) => _clientManagement(context, data.list),
          orElse: () => const SizedBox(),
        );
      }),
    );
  }

  Widget _clientManagement(BuildContext context, List<ClientModel> list) {
    return ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(list[index].firstName!),
            subtitle: Text(list[index].lastName!),
          );
        },
        itemCount: list.length);
  }
}

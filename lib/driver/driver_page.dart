import 'package:driver/driver/driver_chats.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:driver/driver/driver_orders.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../Service/client_service.dart';
import '../bloc/client_bloc/client_bloc.dart';
import '../models/client.dart';
import '../widget/widgets.dart';

class DriverPage extends StatelessWidget {
  DriverPage({Key? key}) : super(key: key);
  final ValueNotifier<bool> refrash = ValueNotifier<bool>(true);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ClientBloc>(
      create: (context) => ClientBloc(GetIt.instance.get<ClientService>())..add(const ClientEvent.getClients()),
      child: BlocConsumer<ClientBloc, ClientState>(listener: (context, state) {
        state.mapOrNull();
      }, builder: (context, state) {
        return state.maybeMap(
          loading: (_) => const CircularProgressIndicator(),
          data: (data) => _DriverPage(context, data.list),
          orElse: () => const SizedBox(),
        );
      }),
    );
  }

  Widget _DriverPage(BuildContext context, List<ClientModel> list) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
            valueListenable: refrash,
            builder: (BuildContext context, value, Widget? child) {
              return Container(
                color: const Color(0xFFEFEEF8),
                width: double.infinity,
                height: double.infinity,
                child: Column(
                  children: [
                    Container(
                      height: 150,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.horizontal(left: Radius.circular(20), right: Radius.circular(20))),
                      child: Column(
                        children: [
                          AppSixeBox.size20,
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              IconButton(
                                  onPressed: () {}, color: const Color(0xFFDFDDF5), icon: Image.asset('assets/Vector.png')),
                              AppText.blackText20('Управление заказами'),
                            ],
                          ),
                          AppSixeBox.size10,
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              FilledButton(
                                  style: value ? AppButtonStyle.stdButtonStyle(): AppButtonStyle.whiteButtonStyle(),
                                  child: value ? AppText.whiteText18('Чаты') : AppText.blackText18('Чаты'),
                                  onPressed: () {refrash.value = !refrash.value;}),
                              FilledButton(
                                  style: value ? AppButtonStyle.whiteButtonStyle() : AppButtonStyle.stdButtonStyle(),
                                  child: value ? AppText.blackText18('Заявки') : AppText.whiteText18('Заявки'),
                                  onPressed: () {refrash.value = !refrash.value;}),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => DriverOrders(clientId: list[index].id!)));
                              },
                              child: ListTile(
                                title: Text(list[index].firstName!),
                                subtitle: Text(list[index].lastName!),
                              ),
                            );
                          },
                          itemCount: list.length),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../Service/driver_service.dart';
import '../bloc/driver_bloc/driver_bloc.dart';
import '../models/driver.dart';

class DriverManagement extends StatelessWidget {
  const DriverManagement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DriverBloc>(
      create: (context) => DriverBloc(GetIt.instance.get<DriverService>())..add(const DriverEvent.initial()),
      child: BlocConsumer<DriverBloc, DriverState>(listener: (context, state) {
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

  Widget _clientManagement(BuildContext context, List<DriverModel> list) {
    return ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(list[index].name!),
            subtitle: Text(list[index].surname!),
          );
        },
        itemCount: list.length);
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../Service/driver_service.dart';
import '../bloc/driver_bloc/driver_bloc.dart';
import 'client_grafic.dart';

class DriverClientGrafic extends StatelessWidget {
  const DriverClientGrafic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DriverBloc>(
      create: (context) => DriverBloc(GetIt.instance.get<DriverService>())..add(DriverEvent.initial()),
      child: BlocConsumer<DriverBloc, DriverState>(listener: (context, state) {
        state.mapOrNull();
      }, builder: (context, state) {
        return state.maybeMap(
          loading: (_) => const CircularProgressIndicator(),
          data: (data) => ClientGrafic(drivers: data.list),
          orElse: () => const SizedBox(),
        );
      }),
    );
  }
}

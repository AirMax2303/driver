import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:driver/bloc/grafic_bloc/grafic_bloc.dart';
import 'package:driver/widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../Service/defs_service.dart';
import '../Service/grafic_service.dart';
import '../models/driver.dart';
import '../models/model.dart';
import 'client_widget.dart';

class Notifier {
  int caleldar = 0;
  bool showDeiders = false;
  int driver = -1;
}

class ClientGrafic extends StatelessWidget {
  ClientGrafic({Key? key, required this.drivers}) : super(key: key);
  List<DriverModel> drivers;
  final DefsService defs_service = GetIt.instance.get<DefsService>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<GraficBloc>(
      create: (context) => GraficBloc(GetIt.instance.get<GraficService>())..add(GraficEvent.initial(defs_service.defs.id)),
      child: BlocConsumer<GraficBloc, GraficState>(listener: (context, state) {
        state.mapOrNull();
      }, builder: (context, state) {
        return state.maybeMap(
          loading: (_) => const CircularProgressIndicator(),
          data: (data) => _clientGrafic(context, data.list, defs_service.defs.id, BlocProvider.of<GraficBloc>(context)),
          orElse: () => const SizedBox(),
        );
      }),
    );
  }

  Widget _clientGrafic(BuildContext context, List<GraficElement> grafics, String clientId, GraficBloc bloc) {
    Notifier notifier = Notifier();
    final ValueNotifier<bool> refrash = ValueNotifier<bool>(false);
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: const Color(0xFFEFEEF8),
          width: double.infinity,
          height: double.infinity,
          child: ValueListenableBuilder(
              valueListenable: refrash,
              builder: (BuildContext context, value, Widget? child) {
                return Column(
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(color: Color(0xFFEFEEF8)),
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                                AppSixeBox.size20,
                                AppText.blackText20('График поездок'),
                                AppSixeBox.size20,
                                if (notifier.driver > -1)
                                  AppButton.whiteButtonIcon(
                                    '${drivers[notifier.driver].name} ${drivers[notifier.driver].surname}',
                                    onPressed: () {
                                      notifier.showDeiders = !notifier.showDeiders;
                                      refrash.value = !refrash.value;
                                    },
                                    icon: Image.asset('assets/Down 2.png'),
                                  ),
                              ] +
                              DriverList(notifier.showDeiders, drivers, (index) {
                                notifier.driver = index;
                                notifier.showDeiders = !notifier.showDeiders;
                                refrash.value = !refrash.value;
                              }) +
                              [
                                if (notifier.showDeiders | (notifier.driver == -1))
                                  AppButton.whiteButtonIcon('Cоздать новый контракт', onPressed: () {
                                    notifier.showDeiders = !notifier.showDeiders;
                                    refrash.value = !refrash.value;
                                  }, icon: Image.asset('assets/Add.png')),
                                AppSixeBox.size20,
                                const SelectMonth(),
                                AppSixeBox.size20,
                                GraficCalendar(
                                  selected: notifier.caleldar,
                                  grafics: grafics,
                                  onTap: (int index) {
                                    notifier.caleldar = index;
                                    refrash.value = !refrash.value;
                                  },
                                ),
                              ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: 100,
                        decoration: const BoxDecoration(
                            color: Colors.white, borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Column(
                              children: GraficList(grafics, notifier.caleldar) +
                                  <Widget>[
                                    AppSixeBox.size20,
                                    FloatingActionButton(
                                      backgroundColor: AppColor.stdColor,
                                      onPressed: () {
                                        addRoute(context, (value) {
                                          grafics[notifier.caleldar].routes.add(value);
                                          value = value.copyWith(clientid: clientId);
                                          value = value.copyWith(gdayweek: (notifier.caleldar + 1).toString());
                                          bloc.add(GraficEvent.addGrafic(value));
//                                          BlocProvider.of<GraficBloc>(context).add(GraficEvent.addGrafic(value));
                                          refrash.value = !refrash.value;
                                        });
                                      },
                                      child: const Icon(Icons.add),
                                    ),
                                    AppSixeBox.size20,
                                    Expenses(2000, 10000),
                                    AppSixeBox.size20,
                                    AppButton.filledButtonIcon('Внести изменения в график',
                                        onPressed: () {}, icon: Image.asset('assets/Vector (4).png')),
                                    AppSixeBox.size10,
                                  ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              }),
        ),
      ),
    );
  }
}

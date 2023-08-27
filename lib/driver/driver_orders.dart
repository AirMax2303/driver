import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../Service/grafic_service.dart';
import '../bloc/grafic_bloc/grafic_bloc.dart';
import '../client/client_grafic.dart';
import '../client/client_widget.dart';
import '../models/model.dart';
import '../widget/widgets.dart';

class DriverOrders extends StatelessWidget {
  const DriverOrders({Key? key, required this.clientId}) : super(key: key);
  final String clientId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<GraficBloc>(
      create: (context) => GraficBloc(GetIt.instance.get<GraficService>())..add(GraficEvent.initial(clientId)),
      child: BlocConsumer<GraficBloc, GraficState>(listener: (context, state) {
        state.mapOrNull();
      }, builder: (context, state) {
        return state.maybeMap(
          loading: (_) => const CircularProgressIndicator(),
          data: (data) => _DriverOrders(context, data.list, clientId),
          orElse: () => const SizedBox(),
        );
      }),
    );
  }

  Widget _DriverOrders(
    BuildContext context,
    List<GraficElement> grafics,
    String clientId,
  ) {
    Notifier notifier = Notifier();
    final ValueNotifier<bool> refrash = ValueNotifier<bool>(false);
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: const Color(0xFFEFEEF8),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppSixeBox.size10,
              AppText.blackText20(
                'График поездок',
              ),
              AppSixeBox.size10,
              Container(
                width: double.infinity,
                height: 200,
                child: Image.asset(
                  "assets/image 6.png",
                ),
              ),
              Expanded(
                child: Container(
                  decoration:
                      const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
                  child: ValueListenableBuilder(
                      valueListenable: refrash,
                      builder: (BuildContext context, value, Widget? child) {
                        return Column(
                          children: [
                            SizedBox(
                              width: double.infinity,
                              child: Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    AppSixeBox.size10,
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
                                    Padding(
                                      padding: const EdgeInsets.all(18.0),
                                      child: Column(
                                        children: GraficList(grafics, notifier.caleldar),
                                      ),
                                    ),
                                  AppButton.filledButton('Откликнуться на заявку', onPressed: () {},),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        );
                      }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

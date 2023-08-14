import 'package:driver/widget/format.dart';
import 'package:driver/widget/widgets.dart';
import 'package:flutter/material.dart';

import '../models/driver.dart';
import '../models/model.dart';
import '../widget/input_text.dart';
import 'client_widget.dart';

class Notifier {
  int caleldar = 0;
  bool showDeiders = false;
  int driver = -1;
}

class ClientGrafic extends StatelessWidget {
  ClientGrafic({Key? key, required this.grafics, required this.drivers}) : super(key: key);
  List<GraficElement> grafics;
  List<DriverModel> drivers;
  Notifier notifier = Notifier();
  final ValueNotifier<bool> refrash = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
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
                                    '${drivers[notifier.driver].name!} ${drivers[notifier.driver].surname!}',
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
//                                          grafics[notifier.caleldar].routes.add(value);
                                          grafics[notifier.caleldar].routes.add(value);
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


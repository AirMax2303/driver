

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/driver.dart';
import '../models/model.dart';
import '../widget/format.dart';
import '../widget/input_text.dart';
import '../widget/widgets.dart';


List<Widget> GraficList(List<GraficElement> grafics, int day) {
  List<Widget> list = [];
  list = List<Widget>.generate(
      grafics[day].routes.length,
          (index) => Card(
        child: ListTile(
          leading: Text(grafics[day].routes[index].time!),
          trailing: Text(grafics[day].routes[index].name!),
        ),
      ));
  return list;
}

List<Widget> DriverList(bool show, List<DriverModel> drivers, IndexCallback onTap) {
  List<Widget> list = [];
  if (show) {
    list = List<Widget>.generate(
        drivers.length,
            (index) => Card(
          margin: const EdgeInsets.all(1.0),
          child: InkWell(
            onTap: () {
              onTap(index);
            },
            child: ListTile(
                leading: CircleAvatar(backgroundColor: Colors.white, child: Image.asset('assets/Frame 18.png')),
                title: Text('${drivers[index].name!} ${drivers[index].surname!}'),
                trailing: IconButton(
                  onPressed: () {},
                  icon: CircleAvatar(
                    backgroundColor: const Color(0xFFBEBEBE),
                    child: Image.asset('assets/Down 4.png'),
                  ),
                )),
          ),
        ));
  }
  return list;
}

class SelectMonth extends StatelessWidget {
  const SelectMonth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/Left 2.png'),
        const Text('Июль'),
        Image.asset('assets/Right 2.png'),
      ],
    );
  }
}

List<String> dayweeks = ['Пн', 'Вт', 'Ср', 'Чт', 'Пт', 'Сб', 'Вс'];

class GraficCalendar extends StatelessWidget {
  GraficCalendar({Key? key, required this.onTap, required this.selected, required this.grafics}) : super(key: key);
  IndexCallback onTap;
  late final int selected;
  List<GraficElement> grafics;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            7,
                (index) {
              Color color = Colors.white;
              if (index == selected) {
                color = AppColor.stdColor;
              } else {
                if (grafics[index].routes.isNotEmpty) {
                  color = AppColor.greenColor;
                }
              }
              return Container(
                width: 42,
                height: 53,
                decoration: BoxDecoration(
                  color: color,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5,
                      spreadRadius: 1,
                      offset: Offset(4, 4),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: InkWell(
                    onTap: () {
                      onTap(index);
                    },
                    child: Column(
                      children: index == selected
                          ? [
                        AppText.whiteText16(dayweeks[index]),
                        AppText.whiteText12((index + 1).toString()),
                      ]
                          : [
                        AppText.blackText16(dayweeks[index]),
                        AppText.blackText12((index + 1).toString()),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ));
  }
}

Widget Expenses(int inWeek, int inMonth) {
  return Row(
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      FilledButton(
          style: TextButton.styleFrom(elevation: 8,
            backgroundColor: AppColor.greenColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // <-- Radius
            ),),
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Column(
              children: [AppText.blackText25('~$inWeek ₽'), AppText.blackText18('в неделю')],
            ),
          )),
      FilledButton(
          style: TextButton.styleFrom(elevation: 8,
            backgroundColor: AppColor.backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // <-- Radius
            ),),
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Column(
              children: [AppText.blackText25('~$inMonth ₽'), AppText.blackText18('в месяц')],
            ),
          )),
    ],
  );
}

typedef AddRouteClick = void Function(RouteModel route);

void addRoute(BuildContext context, AddRouteClick addRouteClick) {
  RouteModel route = RouteModel();

  showModalBottomSheet<void>(
    context: context,
    backgroundColor: AppColor.backgroundColor,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (BuildContext context) {
      return Padding(
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: SizedBox(
          height: 450,
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
//            mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                  AppButton.button16(
                    'Отменить',
                    onPressed: () => Navigator.pop(context),
                  ),
                  AppText.blackText18(
                    'Новый маршрут',
                  ),
                  AppButton.button16('Готово', onPressed: () {
                    addRouteClick(route);
                    Navigator.pop(context);
                  }),
                ]),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5,
                        spreadRadius: 1,
                        offset: Offset(4, 4),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      children: [
                        RouteTextFormField(
                          hintText: 'Название маршрута',
                          onChanged: (String value) {
                            route.name = value;
                          },
                        ),
                        RouteTextFormField(
                          hintText: 'От куда (Адрес)',
                          onChanged: (String value) {
                            route.from = value;
                          },
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Куда (Адрес)',
                            border: InputBorder.none,
                          ),
                          onChanged: (String value) {
                            route.to = value;
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                AppSixeBox.size20,
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5,
                        spreadRadius: 1,
                        offset: Offset(4, 4),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppText.blackText18(
                          'Время',
                        ),
                        Container(
                          height: 35,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 35,
                                width: 120,
                                color: AppColor.greenColor,
                                child:
                                Align(alignment: const AlignmentDirectional(0, 0), child: AppText.blackText16('31 Сентябрь')),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Center(
                                child: Container(
                                  width: 80,
                                  decoration: BoxDecoration(
                                    color: AppColor.greenColor,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    inputFormatters: [Format.timeFormat],
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                        contentPadding: const EdgeInsets.all(8),
                                        hintStyle: AppTextStyle.blackTextStyle18,
                                        border: InputBorder.none,
                                        hintText: '00:00'),
                                    onChanged: (String value) {
                                      route.time = value;
                                    },
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                AppSixeBox.size20,
                AppButton.whiteButtonIcon('Добавить новый маршрут',
                    onPressed: () {}, icon: Image.asset('assets/Group 427323188.png')),
                AppSixeBox.size20,
              ],
            ),
          ),
        ),
      );
    },
  );
}

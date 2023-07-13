import 'package:driver/questionnaire/step3.dart';
import 'package:driver/questionnaire/step5.dart';
import 'package:driver/widget/widgets.dart';
import 'package:flutter/material.dart';

import '../auth/login.dart';
import '../models/model.dart';

class Step4 extends StatelessWidget {
  const Step4({Key? key, required this.driver}) : super(key: key);
  final Driver driver;

  @override
  Widget build(BuildContext context) {
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
              Container(
                width: double.infinity,
                height: 192,
                child: Column(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Step3(driver: driver,)));
                        }, color: const Color(0xFFDFDDF5), icon: Image.asset('assets/Vector.png')),
                        AppButton.button16(
                          'Воыйти',
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                          },
                        )
                      ],
                    ),
                    AppSixeBox.size20,
                    AppText.text18('шаг 4'),
                    AppSixeBox.size20,
                    AppText.blackText20(
                      'Заполнение заявки',
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  decoration:
                  const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AppText.blackText16('Марка авто*',),
                                TextFormField(
                                  decoration: const InputDecoration(hintText: 'Mercedes'),
                                  onChanged: (value) {driver.carbrand = value;},
                                ),
                                AppText.blackText16('Модель авто*',),
                                TextFormField(
                                  decoration: const InputDecoration(hintText: 'Введите модель'),
                                  onChanged: (value) {driver.carmodel = value;},
                                ),
                                AppText.blackText16('Цвет*',),
                                TextFormField(
                                  decoration: const InputDecoration(hintText: 'Введите цвет'),
                                  onChanged: (value) {driver.carcolor = value;},
                                ),
                                AppText.blackText16('Год выпуска*',),
                                TextFormField(
                                  decoration: const InputDecoration(hintText: '____'),
                                  onChanged: (value) {driver.caryear = value;},
                                ),
                                AppText.blackText16('Госномер*',),
                                TextFormField(
                                  decoration: const InputDecoration(hintText: 'Введите госномер'),
                                  onChanged: (value) {driver.carNP = value;},
                                ),
                                AppText.blackText16('СТС*',),
                                TextFormField(
                                  decoration: const InputDecoration(hintText: 'Введите номер документа'),
                                  onChanged: (value) {driver.carCTC = value;},
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Column(
                                children: [
                                  AppButton.filledButton('Далее', onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => Step5(driver: driver,)));
                                  }),
                                  AppSixeBox.size20
                                ],
                              ),
                            )
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

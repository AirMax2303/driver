import 'package:driver/models/defs.dart';
import 'package:driver/questionnaire/step2.dart';
import 'package:driver/questionnaire/step3.dart';
import 'package:driver/questionnaire/step_sms.dart';
import 'package:driver/widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

import '../Service/defs_service.dart';
import '../auth/auth.dart';
import '../auth/login.dart';
import '../models/driver.dart';

class Step1 extends StatelessWidget {
  Step1({Key? key, required this.defs, required this.driver}) : super(key: key);
  DefsModel defs;
  DriverModel driver;


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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const AuthPage()));
                        }, color: const Color(0xFFDFDDF5), icon: Image.asset('assets/Vector.png')),
                        AppButton.button16(
                          'Воыйти',
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(defs: defs,)));
                          },
                        )
                      ],
                    ),
                    AppSixeBox.size20,
                    AppText.text18('шаг 1'),
                    AppSixeBox.size20,
                    AppText.blackText20(
                      'Подтверждение номера',
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
                                AppSixeBox.size20,
                                AppText.blackText16('Введите номер телефона и мы отправим вам код с письмом через SMS',),
                                AppSixeBox.size20,
                                AppText.blackText16('Номер телефона*'),
                                TextFormField(
                                  decoration: const InputDecoration(hintText: 'Введите номер телефона'),
                                  onChanged: (value) {driver = driver.copyWith(phone: value);},
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
                                  AppButton.filledButton('Отправить код подтверждения', onPressed: () {
                                    final DefsService service = DefsService();
                                    service.saveDefs('driver', defs);
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => StepSMS(defs: defs, driver: driver,)));
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


import 'package:driver/questionnaire/step_sms.dart';
import 'package:driver/widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../Service/defs_service.dart';
import '../Service/driver_service.dart';
import '../auth/auth.dart';
import '../auth/login.dart';


class Step1 extends StatelessWidget {
  Step1({Key? key}) : super(key: key);
  final DriverService service = GetIt.instance.get<DriverService>();

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
                            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
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
                                  onChanged: (value) {service.driver = service.driver.copyWith(phone: value);},
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
                                    final DefsService defs_service = DefsService();
                                    defs_service.setDefs('driver');
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => StepSMS()));
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


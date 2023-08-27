import 'package:driver/questionnaire/step3.dart';
import 'package:driver/widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../Service/driver_service.dart';
import '../auth/login.dart';

class Step2 extends StatelessWidget {
  Step2({Key? key}) : super(key: key);
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
                        IconButton(onPressed: () {}, color: const Color(0xFFDFDDF5), icon: Image.asset('assets/Vector.png')),
                        AppButton.button16(
                          'Воыйти',
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                          },
                        )
                      ],
                    ),
                    AppSixeBox.size20,
                    AppText.text18('шаг 2'),
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
                                AppText.blackText16('Пароль*',),
                                TextFormField(
                                  decoration: const InputDecoration(hintText: 'Придумайте пароль'),
                                  onChanged: (value) {service.driver = service.driver.copyWith(password: value);},
                                ),
                                AppText.blackText16('Город*',),
                                TextFormField(
                                  decoration: const InputDecoration(hintText: 'Выберите город'),
                                  onChanged: (value) {service.driver = service.driver.copyWith(town: value);},
                                ),
                                AppText.blackText16('Реферальный код',),
                                TextFormField(
                                  decoration: const InputDecoration(hintText: 'Введите Реферальный код'),
                                  onChanged: (value) {service.driver = service.driver.copyWith(refcode: value);},
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
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => Step3()));
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


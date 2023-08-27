import 'package:driver/questionnaire/step2.dart';
import 'package:driver/questionnaire/step4.dart';
import 'package:driver/widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../Service/driver_service.dart';
import '../auth/login.dart';


class Step3 extends StatelessWidget {
  Step3({Key? key}) : super(key: key);
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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Step2()));
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
                    AppText.text18('шаг 3'),
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
                                AppText.blackText16('Страна получения*',),
                                TextFormField(
                                  decoration: const InputDecoration(hintText: 'Выберите страну'),
                                  onChanged: (value) {service.driver = service.driver.copyWith(country: value);},
                                ),
                                AppText.blackText16('Фамилия*',),
                                TextFormField(
                                  decoration: const InputDecoration(hintText: 'Введите фамилию'),
                                  onChanged: (value) {service.driver = service.driver.copyWith(surname: value);},
                                ),
                                AppText.blackText16('Имя*',),
                                TextFormField(
                                  decoration: const InputDecoration(hintText: 'Введите Имя'),
                                  onChanged: (value) {service.driver = service.driver.copyWith(name: value);},
                                ),
                                AppText.blackText16('ВУ (водительского удоставерения)',),
                                TextFormField(
                                  decoration: const InputDecoration(hintText: 'Введите номер ВУ'),
                                  onChanged: (value) {service.driver = service.driver.copyWith(numberDL: value);},
                                ),
                                AppText.blackText16('Дата выдачи',),
                                TextFormField(
                                  decoration: const InputDecoration(hintText: '__/__/____'),
                                  onChanged: (value) {service.driver = service.driver.copyWith(dateDL: value);},
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
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => Step4()));
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





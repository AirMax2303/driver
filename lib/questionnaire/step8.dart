import 'package:driver/questionnaire/step7.dart';
import 'package:driver/questionnaire/step9.dart';
import 'package:driver/widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../Service/driver_service.dart';
import '../auth/login.dart';

class Step8 extends StatelessWidget {
  Step8({Key? key,}) : super(key: key);
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
                        IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Step7()));
                            },
                            color: const Color(0xFFDFDDF5),
                            icon: Image.asset('assets/Vector.png')),
                        AppButton.button16(
                          'Воыйти',
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()));
                          },
                        )
                      ],
                    ),
                    AppSixeBox.size20,
                    AppText.text18('шаг 8'),
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
                                AppText.blackText16(
                                  'Во время поездки случилась предаварийная ситуация, ребенок испугался.',
                                ),
                                TextFormField(
                                  maxLines: 5,
                                  decoration: const InputDecoration(hintText: 'Ваши действия?'),
                                  onChanged: (value) {
                                    service.driver = service.driver.copyWith(question5: value);
                                  },
                                ),
                                AppText.blackText16(
                                  'Ребенок испачкал вам салон.',
                                ),
                                TextFormField(
                                  maxLines: 5,
                                  decoration: const InputDecoration(hintText: 'Как вы отреагируете?'),
                                  onChanged: (value) {
                                    service.driver = service.driver.copyWith(question6: value);
                                  },
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
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Step9()));
                              }),
                              AppSixeBox.size20
                            ],
                          ),
                        )),
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

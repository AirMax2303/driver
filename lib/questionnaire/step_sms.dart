import 'package:driver/questionnaire/step1.dart';
import 'package:driver/questionnaire/step2.dart';
import 'package:driver/widget/widgets.dart';
import 'package:flutter/material.dart';

import '../models/model.dart';
import '../widget/pin.dart';

class StepSMS extends StatelessWidget {
  StepSMS({Key? key, required this.driver}) : super(key: key);
  Driver driver;
  var pin = <String>['', '', '', ''];
  int _pin = 0;
  late final ValueNotifier<bool> _pinChenge = ValueNotifier<bool>(true);

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
              SizedBox(
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
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Step1(driver: driver)));
                            },
                            color: const Color(0xFFDFDDF5), icon: Image.asset('assets/Vector.png')),
                      ],
                    ),
                    AppSixeBox.size20,
                    AppText.blackText20(
                      'Мы отправили вам СМС код',
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
                    child: ValueListenableBuilder(
                        valueListenable: _pinChenge,
                        builder: (BuildContext context, value, Widget? child) {
                          return Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
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
                                      AppText.blackText18(
                                        'На номер: $driver.phone',
                                      ),
                                      AppSixeBox.size20,
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          PinBox(data: pin[0]),
                                          PinBox(data: pin[1]),
                                          PinBox(data: pin[2]),
                                          PinBox(data: pin[3]),
                                        ],
                                      ),
                                      AppSixeBox.size20,
                                      AppText.blackText16(
                                        'Повторная отправка будет возможна через: 56 секунд',
                                      ),
                                      AppSixeBox.size20,
                                      PinKeyboard(
                                        onDelPressed: () {
                                          if (pin[_pin] == '') {
                                            if (_pin != 0) {
                                              _pin = _pin - 1;
                                            }
                                          }
                                          pin[_pin] = '';
                                          if (_pin != 0) {
                                            _pin = _pin - 1;
                                          } else {
                                            _pin = 0;
                                          }
                                          _pinChenge.value = !_pinChenge.value;
                                        },
                                        click: (int number) {
                                          pin[_pin] = number.toString();
                                          _pin = _pin + 1;
                                          if (_pin == 4) {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) => Step2(
                                                          driver: driver,
                                                        )));
                                          } else {
                                            _pinChenge.value = !_pinChenge.value;
                                          }
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          );
                        }),
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

//Navigator.push(context, MaterialPageRoute(builder: (context) => Step2(driver: Driver(),)));

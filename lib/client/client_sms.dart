import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../Service/client_service.dart';
import '../models/driver.dart';
import '../widget/pin.dart';
import '../widget/widgets.dart';
import 'client_step2.dart';

class ClientSMS extends StatelessWidget {
  ClientSMS({Key? key}) : super(key: key);
  var pin = <String>['', '', '', ''];
  int _pin = 0;
  late final ValueNotifier<bool> _pinChenge = ValueNotifier<bool>(true);
  final ClientService service = GetIt.instance.get<ClientService>();

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
                              Navigator.push(context, MaterialPageRoute(builder: (context) => ClientStep2()));
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
                                      AppText.blackText18('На номер: ${service.client.phone}'),
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
                                                    builder: (context) => ClientStep2()));
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
import 'package:driver/auth/pinauth.dart';
import 'package:driver/widget/widgets.dart';
import 'package:flutter/material.dart';

import 'client_pin_auth.dart';

class ClientLoginPage extends StatelessWidget {
  ClientLoginPage({Key? key}) : super(key: key);
  String phone = '';

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
                height: 250,
                child: Image.asset(
                  "assets/Saly-10.png",
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
                            child:
                            Column(mainAxisSize: MainAxisSize.max, crossAxisAlignment: CrossAxisAlignment.start, children: [
                              AppSixeBox.size20,
                              AppText.blackText16(
                                'Номер телефона',
                              ),
                              TextFormField(
                                decoration: const InputDecoration(hintText: 'Введите номер телефона'),
                              ),
                              AppSixeBox.size20,
                              AppText.blackText16('Пароль'),
                              TextFormField(
                                decoration: const InputDecoration(hintText: 'Введите пароль'),
                              ),
                            ]),
                          ),
                        ),
                        Container(
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Column(
                                children: [
                                  AppButton.filledButton('Войти', onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => ClientPinAuthPage()));
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

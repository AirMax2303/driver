import 'package:driver/questionnaire/step3.dart';
import 'package:driver/questionnaire/step7.dart';
import 'package:driver/widget/widgets.dart';
import 'package:flutter/material.dart';

import '../models/model.dart';

class Step10 extends StatelessWidget {
  const Step10({Key? key}) : super(key: key);

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
                height: 298,
                child: Image.asset("assets/Saly-8.png",),
              ),
              Expanded(
                child: Container(
                  decoration:
                  const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                            children: [
                              AppSixeBox.size20,
                              AppText.blackText20('Вы успешно зарегистрировались',),
                              AppSixeBox.size20,
                              AppText.blackText16('Информация передана куратору и ваша заявка будет расмотрена в течение 24 часов',),
                            ],
                          ),
                        ),
                      ),
                    ],
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




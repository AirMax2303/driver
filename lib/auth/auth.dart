import 'package:driver/widget/widgets.dart';
import 'package:flutter/material.dart';

import '../client/client_step1.dart';
import '../models/model.dart';
import '../questionnaire/step1.dart';
import 'login.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/insert-picture-icon 3.png",
                  width: 68,
                  height: 69,
                ),
                const SizedBox(
                  height: 40,
                ),
                Image.asset(
                  "assets/автоняня.png",
                ),
                const SizedBox(
                  height: 40,
                ),
                AppButton.filledButton('Войти', onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                }),
                const SizedBox(
                  height: 40,
                ),
                AppButton.whiteButton('Зарегистрироваться', onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ClientStep1()));
                }),
                const SizedBox(
                  height: 40,
                ),
                AppButton.button16('Зарегистрироваться как водитель', onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Step1(driver: Driver(),)));
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}

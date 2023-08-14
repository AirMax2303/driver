import 'package:driver/auth/pinauth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:driver/widget/widgets.dart';
import 'package:flutter/material.dart';
import '../bloc/defs_bloc/defs_bloc.dart';
import '../models/defs.dart';
import '../models/driver.dart';
import '../questionnaire/step1.dart';
import 'login.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DefsBloc>(
      create: (context) => DefsBloc()..add(const DefsEvent.initial('driver')),
      child: BlocConsumer<DefsBloc, DefsState>(listener: (context, state) {
        state.mapOrNull();
      }, builder: (context, state) {
        return state.maybeMap(
          loading: (_) => const CircularProgressIndicator(),
          data: (data) => _authPage(context, data.defs!),
          orElse: () => const SizedBox(),
        );
      }),
    );
  }

  Widget _authPage(BuildContext context, DefsModel defs) {
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
                  if (defs.id!.isEmpty) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Step1(
                                  defs: defs,
                                  driver: const DriverModel(),
                                )));
                  } else {
                    if (defs.pin!.isEmpty) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginPage(
                                    defs: defs,
                                  )));
                    } else {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PinAuthPage(
                                    defs: defs,
                                  )));
                    }
                  }
                }),
                const SizedBox(
                  height: 40,
                ),
                AppButton.whiteButton('Зарегистрироваться', onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Step1(
                                defs: defs,
                                driver: const DriverModel(),
                              )));
                }),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

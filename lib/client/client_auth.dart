import 'package:driver/widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/defs_bloc/defs_bloc.dart';
import '../client/client_step1.dart';
import '../models/client.dart';
import '../models/defs.dart';
import 'client_login.dart';

class ClientAuthPage extends StatelessWidget {
  const ClientAuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DefsBloc>(
      create: (context) => DefsBloc()..add(const DefsEvent.initial('client')),
      child: BlocConsumer<DefsBloc, DefsState>(listener: (context, state) {
        state.mapOrNull();
      }, builder: (context, state) {
        return state.maybeMap(
          loading: (_) => const CircularProgressIndicator(),
          data: (data) => _ClientAuthPage(context, data.defs!),
          orElse: () => const SizedBox(),
        );
      }),
    );
  }

  Widget _ClientAuthPage(BuildContext context, DefsModel defs) {
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ClientLoginPage()));
                }),
                const SizedBox(
                  height: 40,
                ),
                AppButton.whiteButton('Зарегистрироваться', onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ClientStep1(defs: defs, client: ClientModel(id: defs.id))));
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

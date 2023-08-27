import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import '../Service/client_service.dart';
import '../Service/defs_service.dart';

import '../widget/input_text.dart';
import '../widget/widgets.dart';
import 'client_pin_auth.dart';

class ClientStep2 extends StatelessWidget {
  ClientStep2({
    Key? key,
  }) : super(key: key);
  final ClientService service = GetIt.instance.get<ClientService>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: const Color(0xFFEFEEF8),
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: () {}, color: const Color(0xFFDFDDF5), icon: Image.asset('assets/Vector.png')),
                    AppButton.button16(
                      'Воыйти',
                      onPressed: () {},
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                AppText.blackText20(
                  'Регистрация аккаунта',
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormFieldBox(
                  'Имя*',
                  hintText: 'Введите имя',
                  onChanged: (value) {
                    service.client = service.client.copyWith(firstName: value);
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormFieldBox(
                  'Фамилия*',
                  hintText: 'Иванов',
                  onChanged: (value) {
                    service.client = service.client.copyWith(lastName: value);
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormFieldBox(
                  'Пароль*',
                  hintText: 'Введите пароль',
                  onChanged: (value) {
                    service.client = service.client.copyWith(password: value);
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                AppButton.filledButton('Зарегистрироваться', onPressed: () {
                  final DefsService defs_service = GetIt.instance.get<DefsService>();
                  defs_service.setDefs('client');
                  service.client = service.client.copyWith(id: defs_service.defs.id);
                  service.addClient();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ClientPinAuthPage(
                                header: 'Задайте код авторизации в приложении',
                              )));
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

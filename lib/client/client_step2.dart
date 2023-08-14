import 'package:flutter/material.dart';

import '../Service/defs_service.dart';
import '../models/client.dart';
import '../models/defs.dart';
import '../widget/input_text.dart';
import '../widget/widgets.dart';

class ClientStep2 extends StatelessWidget {
  ClientStep2({Key? key, required this.defs, required this.client,}) : super(key: key);
  DefsModel defs;
  ClientModel client;

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
                    AppButton.button16('Воыйти', onPressed: () {},)
                  ],
                ),
                const SizedBox(height: 30,),
                AppText.blackText20('Регистрация аккаунта',),
                const SizedBox(height: 20,),
                TextFormFieldBox('Имя*', hintText: 'Введите имя', onChanged: (value) {client = client.copyWith(firstName: value);},),
                const SizedBox(height: 20,),
                TextFormFieldBox('Фамилия*', hintText: 'Иванов', onChanged: (value) {client = client.copyWith(lastName: value);},),
                const SizedBox(height: 20,),
                TextFormFieldBox('Пароль*', hintText: 'Введите пароль', onChanged: (value) {client = client.copyWith(password: value);},),
                const SizedBox(height: 20,),
                AppButton.filledButton('Зарегистрироваться', onPressed: () {
                  final DefsService service = DefsService();
                  service.saveDefs('client', defs);
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

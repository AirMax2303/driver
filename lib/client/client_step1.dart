import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../Service/client_service.dart';
import '../widget/input_text.dart';
import '../widget/widgets.dart';
import 'client_sms.dart';

class ClientStep1 extends StatelessWidget {
  ClientStep1({Key? key}) : super(key: key);
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
                  height: 50,
                ),
                AppText.blackText20(
                  'Подтверждение номера',
                ),
                const SizedBox(
                  height: 20,
                ),
                AppText.blackText16(
                  'Введите номер телефона и мы отправим',
                ),
                AppText.blackText16(
                  'вам код с письмом через SMS',
                ),
                const SizedBox(
                  height: 40,
                ),
                TextFormFieldBox(
                  'Номер телефона*',
                  hintText: '+7 917 999-99-99-99',
                  onChanged: (value) {
                    service.client = service.client.copyWith(phone: value);
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                AppButton.filledButton('Отправить код подтверждения', onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ClientSMS()));
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

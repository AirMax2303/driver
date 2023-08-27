import 'package:driver/widget/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'admin_clients.dart';
import 'admin_drivers.dart';
import 'admin_panel.dart';

class UserManagement extends StatelessWidget {
  UserManagement({Key? key}) : super(key: key);
  final ValueNotifier<bool> refrash = ValueNotifier<bool>(true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: const Color(0xFFEFEEF8),
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Container(
                height: 150,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.horizontal(left: Radius.circular(20), right: Radius.circular(20))),
                child: Column(
                  children: [
                    AppSixeBox.size20,
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const AdminPanel()));
                            },
                            color: const Color(0xFFDFDDF5),
                            icon: Image.asset('assets/Vector.png')),
                        AppText.blackText20('Управление пользователями'),
                      ],
                    ),
                    AppSixeBox.size10,
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        AppButton.stdFilledButton('Клиенты', onPressed: () {
                          refrash.value = !refrash.value;
                        }),
                        AppButton.stdFilledButton('Водители', onPressed: () {
                          refrash.value = !refrash.value;
                        }),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: ValueListenableBuilder(
                      valueListenable: refrash,
                      builder: (BuildContext context, value, Widget? child) {
                        return value ? const ClientManagement() : const DriverManagement();
                      })),
            ],
          ),
        ),
      ),
    );
  }
}

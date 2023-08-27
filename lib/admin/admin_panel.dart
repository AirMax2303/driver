import 'package:driver/Service/grafic_service.dart';
import 'package:driver/models/db.dart';
import 'package:driver/models/grafic.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import '../Service/client_service.dart';
import '../Service/driver_service.dart';
import '../auth/auth.dart';
import '../client/client_auth.dart';
import '../client/client_step1.dart';
import '../questionnaire/step1.dart';
import '../widget/widgets.dart';
import 'admin_management.dart';

class AdminPanel extends StatelessWidget {
  const AdminPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                Container(
                  height: 330,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      AppSixeBox.size10,
                      AppText.blackText20(
                        'Панель управления',
                      ),
                      AppSixeBox.size10,
                      AdminElementRectangle(
                          data: 'Приложение для водителей',
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const AuthPage()));
                          },
                          image: Image.asset(
                            'assets/Saly-14.png',
                          )),
                      AppSixeBox.size10,
                      AdminElementRectangle(
                          data: 'Приложение для клиентов',
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const ClientAuthPage()));
                          },
                          color: AppColor.backgroundColor,
                          image: Image.asset('assets/Group 427323542.png')),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const SizedBox(
                width: 16,
              ),
              AdminElementSquare(
                data: 'Настройка параметров системы',
                image: 'assets/Saly-43.png',
                color: Color(0xFF7067F2),
              ),
              const SizedBox(
                width: 16,
              ),
              AdminElementSquare(
                data: 'Управление пользователями',
                image: 'assets/Saly-31.png',
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => UserManagement()));
                },
              ),
              const SizedBox(
                width: 16,
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              const SizedBox(
                width: 16,
              ),
              AdminElementSquare(data: 'Управление заказами', image: 'assets/Saly-37.png'),
              const SizedBox(
                width: 16,
              ),
              AdminElementSquare(
                data: 'Управление финансами',
                image: 'assets/Saly-45.png',
              ),
              const SizedBox(
                width: 16,
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              const SizedBox(
                width: 16,
              ),
              AdminElementSquare(data: 'Управление настройками', image: 'assets/Saly-26.png'),
              const SizedBox(
                width: 16,
              ),
              AdminElementSquare(
                  data: 'Управление отчетами',
                  image: 'assets/Other 21.png',
                  onTap: () {
                    final GraficService service = GetIt.instance.get<GraficService>();
                    service.getGraficList('cascsac');
                  },
              ),
              const SizedBox(
                width: 16,
              ),
            ],
          ),
        ],
      )),
    );
  }
}

class AdminElementRectangle extends StatelessWidget {
  AdminElementRectangle({Key? key, required this.data, required this.image, this.color, this.onTap}) : super(key: key);
  String data;
  Image image;
  Color? color;
  final GestureTapCallback? onTap;

  get child => null;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 118,
        decoration: BoxDecoration(
          color: color ?? AppColor.greenColor,
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 5,
              spreadRadius: 1,
              offset: Offset(4, 4),
            ),
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 130,
                child: AppText.blackText18(data),
              ),
              Container(
                  child: Row(children: [
                image,
              ])),
            ],
          ),
        ),
      ),
    );
  }
}

class AdminElementSquare extends StatelessWidget {
  AdminElementSquare({Key? key, required this.data, required this.image, this.color, this.onTap}) : super(key: key);
  String data;
  String image;
  Color? color;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: (MediaQuery.of(context).size.width ~/ 2) - 24,
        height: (MediaQuery.of(context).size.width ~/ 2) - 70,
        decoration: BoxDecoration(
          color: color ?? Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 5,
              spreadRadius: 1,
              offset: Offset(4, 4),
            ),
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Stack(
              children: [
                Container(
                  width: 130,
                  child: color == null ? AppText.blackText16(data) : AppText.whiteText16(data),
                ),
                Positioned(
                  top: 40,
                  right: 10,
                  child: Image.asset(
                    image,
                    height: 80,
                    width: 80,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            )),
      ),
    );
  }
}

import 'package:driver/Service/client_service.dart';
import 'package:driver/Service/defs_service.dart';
import 'package:driver/Service/grafic_service.dart';
import 'package:flutter/material.dart';
import 'package:driver/route/route.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Service/driver_service.dart';
import 'bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//flutter clean
//dart run flutter_native_splash:create

//Serializing JSON
//flutter pub run build_runner build --delete-conflicting-outputs
//flutter pub run build_runner watch --delete-conflicting-outputs


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = AppBlocObserver();
  GetIt.instance.registerSingleton<DefsService>(DefsService());
  GetIt.instance.registerSingleton<ClientService>(ClientService());
  GetIt.instance.registerSingleton<DriverService>(DriverService());
  GetIt.instance.registerSingleton<GraficService>(GraficService());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        fontFamily: GoogleFonts.nunito().fontFamily,
      ),
      routerConfig: router,
    );
  }
}


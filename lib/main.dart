import 'package:driver/widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:driver/route/route.dart';
import 'package:google_fonts/google_fonts.dart';
import 'bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//flutter clean
//dart run flutter_native_splash:create

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = AppBlocObserver();
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


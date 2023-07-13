import 'dart:developer';
import 'package:driver/auth/auth.dart';
import 'package:driver/client/client_login.dart';
import 'package:go_router/go_router.dart';

import '../auth/login.dart';
import '../main.dart';
import '../questionnaire/step1.dart';
import '../questionnaire/step2.dart';
import '../questionnaire/step3.dart';

final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        name: 'main',
        path: '/',
        builder: (context, state) {
          log(state.path!);
//          return const ClientLogin();
          return const AuthPage();
        },
      ),
      GoRoute(
        name: 'login',
        path: '/login',
        builder: (context, state) {
          log(state.path!);
          return LoginPage();
        },
      ),
    ]
);


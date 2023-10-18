import 'dart:convert';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hastapos/presentation/auth/login_page.dart';
import 'package:hastapos/utils/user_session.dart' as userSession;

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late String token;

  @override
  initState() {
    final data = GetStorage().read(userSession.LOCAL);
    // var accessToken = LoginResponseModel.fromJson(jsonDecode(data));
    print(data);
    // token = accessToken.token;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 3000,
      splash: Image.asset('assets/logohasta.png'),
      nextScreen: LoginPage(),
      splashTransition: SplashTransition.fadeTransition,
    );
  }
}

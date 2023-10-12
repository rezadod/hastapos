import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hastapos/presentation/auth/login_page.dart';
import 'package:hastapos/presentation/intro/splash_screen.dart';

import 'injectable.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

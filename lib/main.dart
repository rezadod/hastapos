import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hastapos/presentation/auth/login_page.dart';
import 'package:hastapos/presentation/intro/splash_screen.dart';
import 'package:hastapos/presentation/menu/menu_page.dart';
import 'package:hastapos/presentation/report/report_page.dart';

import 'injectable.dart';

Future<void> main() async {
  configureDependencies();
  await GetStorage.init();
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
      home: ReportPage(),
    );
  }
}

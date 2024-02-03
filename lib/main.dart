import 'package:flutter/material.dart';
import 'package:pilleasy/screens/auth_screens/login_screen.dart';
import 'package:get/get.dart';
import 'package:pilleasy/routes/routes.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: RoutesClass.routes,
      initialRoute: RoutesClass.logIn,
    );
  }
}

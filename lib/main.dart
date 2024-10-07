import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn/Login_signIn_getX/dataScreen.dart';
import 'package:learn/Login_signIn_getX/login_signUp_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Datascreen(),
    );
  }
}

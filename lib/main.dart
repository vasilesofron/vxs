import 'package:flutter/material.dart';
import 'package:vxs/login/login_page.dart';
import 'package:get/get.dart';
import 'package:vxs/signup/signup_page.dart';
import 'package:vxs/welcome/welcome_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),

      home: LoginPage()
    );
  }
}


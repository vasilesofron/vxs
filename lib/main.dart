import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:vxs/auth_controller/auth_controller.dart';
import 'package:vxs/login/login_page.dart';
import 'package:get/get.dart';
import 'package:vxs/signup/signup_page.dart';
import 'package:vxs/splash_screen/splash_screen.dart';
import 'package:vxs/welcome/welcome_page.dart';


Future<void> main() async {
  //binding auth controller to the app (wait for binding from firebase and auth controller)
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) => Get.put(AuthController())); //dependency injection
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

      home: SplashScreen()
    );
  }
}


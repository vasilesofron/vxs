// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

const double width = 100;
const double height = 100;

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});



  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      color: Color(0xff34b982),
      child: Center(
        child: Container(
          width: width,
          height: height,
          child: CircularProgressIndicator(
            backgroundColor: Color(0xfffff2d1),
          ),
        ),
      ),
    );
  }
}
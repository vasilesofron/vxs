// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff34b982),
      body: Container(
        child: Center(
          child: Text(
            "Profile Page",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff34b982),
      body: Container(
        child: Center(
          child: Text(
            "HomePage",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
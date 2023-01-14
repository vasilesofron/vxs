// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Machinery extends StatefulWidget {
  const Machinery({super.key});

  @override
  State<Machinery> createState() => _MachineryState();
}

class _MachineryState extends State<Machinery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff34b982),
        centerTitle: true,
        title: Center(
          child: Text(
            'Machinery',
            style: TextStyle(
            color: Color(0xfffff2d1),
            ),
          ),
        ),
      ),
      backgroundColor: Color(0xff34b982),
      body: Container(
        child: Center(
          child: Text(
            "Machinery",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
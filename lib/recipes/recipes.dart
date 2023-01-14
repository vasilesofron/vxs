// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Recipes extends StatefulWidget {
  const Recipes({super.key});

  @override
  State<Recipes> createState() => _RecipesState();
}

class _RecipesState extends State<Recipes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff34b982),
        centerTitle: true,
        title: Center(
          child: Text(
            'Recipes',
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
            "Recipes",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
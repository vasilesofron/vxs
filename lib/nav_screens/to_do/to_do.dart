// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class ToDoList extends StatelessWidget {
  const ToDoList({super.key});

  @override
  Widget build(BuildContext context) {
    //We use this so we can change the width easily
    double w = MediaQuery.of(context).size.width;
    //We use this so we can change the height easily
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xff34b982),
      appBar: AppBar(
        backgroundColor: Color(0xff34b982),
        centerTitle: true,
        title: Center(
          child: Text(
            'To Do List',
            
            style: TextStyle(
            color: Color(0xfffff2d1),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 25,),
          GestureDetector(
            onTap: (){
              Get.back();
            },
            child: Container(
              width: w*0.5,
              height: h*0.08,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: AssetImage(
                      "img/signin.png"
                    ),
                    fit: BoxFit.cover
                  ),
                ),
                child: Center(
                  child: Text(
                        "Go Back",
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff1d5055)
                        ),
                      ),
                ),
            ),
          )
          
        ],

      ),
          );
  }
}
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vxs/auth_controller/auth_controller.dart';

class WelcomePage extends StatelessWidget {
  String email;
  WelcomePage({Key? key, required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //We use this so we can change the width easily
    double w = MediaQuery.of(context).size.width;
    //We use this so we can change the height easily
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xff34b982),
      body: Column(
        children: [
          //THIS IS THE LOGO IMAGE FROM THE TOP
          SizedBox(height: 25,),
          Container(
            width: w,
            height: h*0.3,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "img/managementLogo.png"
                ),
                fit: BoxFit.cover
              ),
            ),
          ),//LOGO IMAGE ENDS HERE
          SizedBox(height: 70),
          //Welcome Text Start Here
          Container(
            width: w,
            margin: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text(
              'Welcome',
              style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Color(0xfffff2d1),
              ),
              ),//WELCOME TEXT ENDS HERE
            SizedBox(height: 5,),
            Text(
              email,
              style: TextStyle(
              fontSize: 16,
              color: Color(0xfffff2d1),
              ),
              ),
                
              
            ],),
          ),
          SizedBox(height: 55.0,),
          GestureDetector(
            onTap: () {
              AuthController.instance.logOut();
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
                      "Log Out",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff1d5055)
                      ),
                    ),
              ),
            ),
          ),
          
        ],
        ),
    );
    
  }
}
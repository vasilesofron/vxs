// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

/* This is the LOGIN PAGE of the app
  BACKGROUND COLOR CODE HEX: #34b982 RGB: rgba(52,185,130,255)
  HELLO TEXT COLOR CODE HEX: #fff2d1
  SIGN INTO YOUR ACCOUNT COLOR CODE HEX: #1d5055
   The structure is gonna be a COLUMN that shows THE LOGO AT THE TOP(1/3 of the screen)
   2 Rows of TEXT (Hello, Sign into your account)
   2 FORM FIELDS (Email and Password)
   2 Buttons for @FORGOT PASSWORD, @Sign In


*/

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    //We use this so we can change the width easily
    double w = MediaQuery.of(context).size.width;
    //We use this so we can change the height easily
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      //BACKGROUND COLOR
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
          ),
          //CONTAINTS THE HELLO AND SIGN INTO YOUR ACCOUNT TEXT
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            width: w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello",
                  style: TextStyle(
                    fontSize: 70,
                    fontWeight: FontWeight.bold,
                    color: Color(0xfffff2d1)
                  ),
                ),
                Text(
                  "Sign into your account",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff1d5055)
                  ),
                ),
                SizedBox(height: 50,),

                //FIRST TEXT BOX
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xfffff2d1),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        spreadRadius: 7,
                        offset: Offset(1, 1),
                        color: Color(0xfffff2d1).withOpacity(0.2),
                      ),
                    ],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Color(0xff34b982),
                          width: 1.0,
                          ),
                          ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Color(0xff34b982),
                          width: 1.0,
                          ),
                          ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),

                //SECOND TEXT BOX
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xfffff2d1),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        spreadRadius: 7,
                        offset: Offset(1, 1),
                        color: Color(0xfffff2d1).withOpacity(0.2),
                      ),
                    ],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Color(0xff34b982),
                          width: 1.0,
                          ),
                          ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Color(0xff34b982),
                          width: 1.0,
                          ),
                          ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),

                //FORGOT YOUR PASSWORD TEXT
                Row(children: [
                  Expanded(child: Container(),),
                  Text(
                  "Forgot your password?",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff1d5055)
                  ),
                ),
                ],)
                
                
                
              ]
              ),
          ),
        ],
        ),
    );
  }
}
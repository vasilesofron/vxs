// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:vxs/auth_controller/auth_controller.dart';
import 'package:vxs/forgot_password/forgot_password.dart';

import '../signup/signup_page.dart';

var emailController = TextEditingController();
var passwordController = TextEditingController();

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
    const double padding = 15;
    //We use this so we can change the height easily
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
          ),//LOGO IMAGE ENDS HERE
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
                ),//HELLO TEXT ENDS HERE
                Text(
                  "Sign into your account",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff1d5055)
                  ),
                ),//SIGN IN TEXT ENDS HERE
                SizedBox(height: 50,),

                //FIRST TEXT BOX (EMAIL)
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
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      prefixIcon: Padding(
                        padding: const EdgeInsets.fromLTRB(padding, 0, 0, 0),
                        child: Icon(Icons.email, color: Color(0xff34b982),),
                      ),
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

                //SECOND TEXT BOX (PASSWORD)
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
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      prefixIcon: Padding(
                        padding: const EdgeInsets.fromLTRB(padding, 0, 0, 0),
                        child: Icon(Icons.key, color: Color(0xff34b982),),
                      ),
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
                /*Row(children: [
                  Expanded(child: Container(),),
                  Text(
                  "Forgot your password?",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff1d5055)
                  ),
                  
                  
                ),//FORGOT PASSWORD TEXT ENDS HERE
                ],)*/
                Column(
                  children: [
                    RichText(text: TextSpan(
            text: "Forgot Password? ",
            style: TextStyle(
              color: Color(0xff1d5055),
              fontSize: 20,
            ),
            children: [
              //CREATE CLICKABLE
            TextSpan(
            text: "Recover",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            recognizer: TapGestureRecognizer()..onTap=()=>Get.to(()=>ForgotPassword())
            ), //CREATE CLICKABLE ENDS HERE
            ]
          ),
          
          ),
                  ],
                
                ),
                //DONT
               
                
                
                
              ],
              
              ),
              
          ),
          SizedBox(height: 60.0,),
          GestureDetector(
            onTap: () {
              AuthController.instance.login(emailController.text.trim(), passwordController.text.trim());

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
                      "Sign In",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff1d5055)
                      ),
                    ),
              ),
            ),
          ),
          SizedBox(height: w*0.2),

          //DONT HAVE AN ACCOUNT TEXT STARTS HERE
          RichText(text: TextSpan(
            text: "Don't have an account? ",
            style: TextStyle(
              color: Color(0xff1d5055),
              fontSize: 20,
            ),
            children: [
              //CREATE CLICKABLE
            TextSpan(
            text: "Create",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            recognizer: TapGestureRecognizer()..onTap=()=>Get.to(()=>SignUpPage())
            ), //CREATE CLICKABLE ENDS HERE
            ]
          ),
          
          ),//DONT HAVE AN ACCOUNT TEXT ENDS HERE
        ],
      )
        );
  }
}
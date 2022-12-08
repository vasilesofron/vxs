// ignore_for_file: prefer_const_constructors

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:vxs/login/login_page.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

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
          //CONTAINTS THE HELLO AND SIGN INTO YOUR ACCOUNT TEXT
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            width: w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Forgot your password?",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Color(0xfffff2d1)
                  ),
                ),//HELLO TEXT ENDS HERE
                Text(
                  "Please fill in the information",
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
                    decoration: InputDecoration(
                      hintText: 'Email',
                      prefixIcon: Icon(Icons.email, color: Color(0xff34b982),),
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
                    decoration: InputDecoration(
                      hintText: 'Name',
                      prefixIcon: Icon(Icons.person, color: Color(0xff34b982),),
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
                SizedBox(height: 20,)
              ],
              
              ),
              
          ),
          SizedBox(height: 60.0,),
          Container(
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
                    "Submit",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff1d5055)
                    ),
                  ),
            ),
          ),
          SizedBox(height: w*0.2),

          //DONT HAVE AN ACCOUNT TEXT STARTS HERE
          RichText(text: TextSpan(
            text: "",
            style: TextStyle(
              color: Color(0xff1d5055),
              fontSize: 20,
            ),
            children: [
            TextSpan(
            text: "Go Back",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            recognizer: TapGestureRecognizer()..onTap=()=>Get.to(()=>LoginPage())
            ),
            ]
          ),
          
          ),//DONT HAVE AN ACCOUNT TEXT ENDS HERE
        ],
      )
    );
  }
}
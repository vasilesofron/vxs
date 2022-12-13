// ignore_for_file: curly_braces_in_flow_control_structures, prefer_const_constructors, avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vxs/login/login_page.dart';
import 'package:vxs/welcome/welcome_page.dart';

class AuthController extends GetxController{
  //Acces AuthController from all the pages (Globally)
  static AuthController instance = Get.find();
  //email, password, name... (Our User)
  late Rx<User?> _user;

  //Summon proprieties from firebase auth
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void onReady(){
    super.onReady();
    //cast to RX user (bcs we use getX)
    _user = Rx<User?>(auth.currentUser);
    // Bind our user to the stream (login/logout notifing user)
    _user.bindStream(auth.userChanges());

    ever(_user, _initialScreen);
  }

  //Null check because there could or could not be a user
  _initialScreen(User? user){
  // If user == null it means nobody has logged in yet.
  if(user == null){
      print('login page');
      // We send the user to the login page
      Get.offAll(() => LoginPage());
  }   else{
    Get.offAll(()=>WelcomePage(email: user.email!));
  }
  }

  //Registration
  void register(String email, password) async{
    try{
     await auth.createUserWithEmailAndPassword(email: email, password: password);
    }catch(e){
      Get.snackbar("About User", "User message",
      backgroundColor: Colors.redAccent,
      snackPosition: SnackPosition.BOTTOM,
      //FAILED TO CREATE ACCOUNT TEXT STARTS HERE
      titleText: Text(
        "Failed to create account."
      ),//FAILED TO CREATE ACCOUNT TEXT ENDS HERE

      //ERROR MESSAGE STARTS HERE
      messageText: Text(
        e.toString(),
        style: TextStyle(
          color: Colors.white
        ),
      ),//ERROR MESSAHE ENDS HERE
      
      );
    }
  }

  void login(String email, password) async{
    try{
     await auth.signInWithEmailAndPassword(email: email, password: password);
    }catch(e){
      Get.snackbar("About Login", "Login message",
      backgroundColor: Colors.redAccent,
      snackPosition: SnackPosition.BOTTOM,
      //FAILED TO CREATE ACCOUNT TEXT STARTS HERE
      titleText: Text(
        "Failed to Login."
      ),//FAILED TO CREATE ACCOUNT TEXT ENDS HERE

      //ERROR MESSAGE STARTS HERE
      messageText: Text(
        e.toString(),
        style: TextStyle(
          color: Colors.white
        ),
      ),//ERROR MESSAHE ENDS HERE
      
      );
    }
  }

  void  logOut() async{
    await auth.signOut();
  }


//TEST TEST TEST
}
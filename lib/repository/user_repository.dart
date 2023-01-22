import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vxs/nav_screens/profile/user.dart';

class UserRepository extends GetxController{
  static UserRepository get instance => Get.find();

final _db = FirebaseFirestore.instance;

createUser(UserModel user){
  _db.collection("Profile").add(user.toJson()).whenComplete(
    () => Get.snackbar("Succes", "Your profile has been updated!",
    snackPosition: SnackPosition.BOTTOM,
    backgroundColor: Colors.green.withOpacity(0.1),
    colorText: Colors.green,
    )
    
    ).catchError((error, stackTrace){
      Get.snackbar("Error", "Something went wrong, try again!",
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.redAccent.withOpacity(0.1),
      colorText: Colors.red);


    });
}

}
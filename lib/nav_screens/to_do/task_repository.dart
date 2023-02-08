import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vxs/nav_screens/to_do/to_do_model.dart';

class TaskRepository extends GetxController {
  static TaskRepository get instance => Get.find();

  final _db = FirebaseFirestore.instance;

  createTask(TaskModel task) async {
    await _db
        .collection("task")
        .add(task.toJson())
        .whenComplete(
          () => Get.snackbar("Succes", "Your task has been added.",
              snackPosition: SnackPosition.BOTTOM,
              backgroundColor: Colors.green.withOpacity(0.1),
              colorText: Colors.green),
        )
        .catchError((error, StackTrace) {
      Get.snackbar("Error", "Something went wrong. Try again.",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.redAccent.withOpacity(0.1),
          colorText: Colors.red);
      print(error.toString());
    });
  }
}

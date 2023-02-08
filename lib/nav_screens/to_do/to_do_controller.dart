
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:vxs/nav_screens/to_do/task_repository.dart';
import 'package:vxs/nav_screens/to_do/to_do_model.dart';

class TaskController extends GetxController{
  static TaskController get instance => Get.find();


  //TextField Controllers to get data from TextFields
  final taskName = TextEditingController();
  final taskDescription = TextEditingController();
  final date = TextEditingController();
  final fullName = TextEditingController();
  final email = TextEditingController();
  final isCompleted = TextEditingController();

  final taskRepo = Get.put(TaskRepository());

  Future<void> createTask(TaskModel task) async{
    await taskRepo.createTask(task);
    Get.back();
  }

}
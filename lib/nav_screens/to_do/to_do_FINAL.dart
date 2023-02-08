import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:vxs/nav_screens/to_do/to_do_controller.dart';
import 'package:vxs/nav_screens/to_do/to_do_model.dart';

class TaskAdd extends StatefulWidget {
  const TaskAdd({super.key});

  @override
  State<TaskAdd> createState() => _TaskAddState();
}

class _TaskAddState extends State<TaskAdd> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(TaskController());
    final formKey = GlobalKey<FormState>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          controller: controller.taskName,
                          decoration: const InputDecoration(
                              label: Text('Task Name'),
                              prefixIcon: Icon(
                                Icons.wysiwyg_rounded,
                                color: Colors.black,
                              ),
                              border: OutlineInputBorder(),
                              labelStyle: TextStyle(
                                color: Colors.black,
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                width: 2.0,
                                color: Colors.black,
                              ))),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: controller.taskDescription,
                          decoration: const InputDecoration(
                              label: Text('Task Description'),
                              prefixIcon: Icon(
                                Icons.title,
                                color: Colors.black,
                              ),
                              border: OutlineInputBorder(),
                              labelStyle: TextStyle(
                                color: Colors.black,
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                width: 2.0,
                                color: Colors.black,
                              ))),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: controller.date,
                          decoration: const InputDecoration(
                              label: Text('Task Date'),
                              prefixIcon: Icon(
                                Icons.title,
                                color: Colors.black,
                              ),
                              border: OutlineInputBorder(),
                              labelStyle: TextStyle(
                                color: Colors.black,
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                width: 2.0,
                                color: Colors.black,
                              ))),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: controller.fullName,
                          decoration: const InputDecoration(
                              label: Text('Full Name'),
                              prefixIcon: Icon(
                                Icons.title,
                                color: Colors.black,
                              ),
                              border: OutlineInputBorder(),
                              labelStyle: TextStyle(
                                color: Colors.black,
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                width: 2.0,
                                color: Colors.black,
                              ))),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: controller.email,
                          decoration: const InputDecoration(
                              label: Text('Email'),
                              prefixIcon: Icon(
                                Icons.title,
                                color: Colors.black,
                              ),
                              border: OutlineInputBorder(),
                              labelStyle: TextStyle(
                                color: Colors.black,
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                width: 2.0,
                                color: Colors.black,
                              ))),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: controller.isCompleted,
                          decoration: const InputDecoration(
                              label: Text('isCompleted'),
                              prefixIcon: Icon(
                                Icons.title,
                                color: Colors.black,
                              ),
                              border: OutlineInputBorder(),
                              labelStyle: TextStyle(
                                color: Colors.black,
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                width: 2.0,
                                color: Colors.black,
                              ))),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                                onPressed: () {
                                  if (formKey.currentState!.validate()) {
                                    final task = TaskModel(
                                        email: controller.email.text.trim(),
                                        fullName:
                                            controller.fullName.text.trim(),
                                        isCompleted:
                                            controller.isCompleted.text.trim(),
                                        date: controller.date.text.trim(),
                                        taskName:
                                            controller.taskName.text.trim(),
                                        taskDescription: controller
                                            .taskDescription.text
                                            .trim());
                                        TaskController.instance.createTask(task);
                                  }
                                },
                                child: const Text('ADD TASK'))),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

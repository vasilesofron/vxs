// ignore_for_file: prefer_const_constructors
/*
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AddTaskPage extends StatefulWidget {
  @override
  _AddTaskPageState createState() => _AddTaskPageState();
}

class _AddTaskPageState extends State<AddTaskPage> {
  final taskController = TextEditingController();

  @override
  void initState() {
    super.initState();
    taskController.text = '';
  }

  @override
  void dispose() {
    taskController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Task'),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: TextField(
              controller: taskController,
              decoration: InputDecoration(hintText: 'Task'),
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              await FirebaseFirestore.instance.collection("tasks").add({
                "task": taskController.text,
                "createdAt": Timestamp.now(),
              });
              taskController.text = '';
            },
            child: Text('Add'),
          ),
          Expanded(
            child: StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance.collection('tasks').snapshots(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) return CircularProgressIndicator();

                return ListView.builder(
                  itemCount: snapshot.data?.docs.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(snapshot.data?.docs[index]['task']),
                    );
                  },
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: TextField(
              controller: taskController,
              decoration: InputDecoration(
                labelText: 'Task',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: ElevatedButton(
              child: Text('Add'),
              onPressed: () {
                FirebaseFirestore.instance.collection('tasks').add({
                  'task': taskController.text,
                });
                taskController.clear();
              },
            ),
          ),
        ],
      ),
    );
  }
}

/*
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
*/


*/
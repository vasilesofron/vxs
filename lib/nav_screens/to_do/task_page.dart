// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Task {
  String taskName = "something";
  String taskDescription = "something";
  bool isComplete;

  Task(
      {required this.taskName,
      required this.taskDescription,
      required this.isComplete});
}

class TaskPage extends StatefulWidget {
  @override
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  List<Task> _tasks = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task Manager'),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: _firestore.collection('tasks').snapshots(),
        builder: (context, AsyncSnapshot snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
            
            
          }
          _tasks = [];
          for (var task in snapshot.data?.docs) {
            _tasks.add(Task(
              taskName: task['taskName'],
              taskDescription: task['taskDescription'],
              isComplete: task['isComplete'],
            ));
          }

          return ListView.builder(
            itemCount: _tasks.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(_tasks[index].taskName),
                subtitle: Text(_tasks[index].taskDescription),
                trailing: Checkbox(
                  value: _tasks[index].isComplete,
                  onChanged: (value) {
                    setState(() {
                      _tasks[index].isComplete = value!;
                      var task;
                      _firestore
                          .collection('tasks')
                          .doc(task.documentID)
                          .update({'isComplete': value});
                    });
                  },
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              late String taskName;
              late String taskDescription;
              return AlertDialog(
                title: Text('Create New Task'),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(hintText: 'Task Name'),
                      onChanged: (value) => taskName = value,
                    ),
                    SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(hintText: 'Task Description'),
                      onChanged: (value) => taskDescription = value,
                    ),
                  ],
                ),
                actions: <Widget>[
                  TextButton(
                    child: Text('Cancel'),
                    onPressed: () => Navigator.pop(context),
                  ),
                  TextButton(
                    child: Text('Create'),
                    onPressed: () async {
                      await _firestore.collection('tasks').add({
                        'taskName': taskName,
                        'taskDescription': taskDescription,
                        'isComplete': false,
                      });
                      Navigator.pop(context);
                    },
                  ),
                ],
              );
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

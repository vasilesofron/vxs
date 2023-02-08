class TaskModel {
  final String? id;
  final String? fullName;
  final String? date;
  final String? isCompleted;
  final String? email;
  final String? taskName;
  final String? taskDescription;



  const TaskModel({
    this.id,
    required this.email,
    required this.fullName,
    required this.isCompleted,
    required this.date,
    required this.taskName,
    required this.taskDescription,
  });


toJson(){
  return {
    "FullName": fullName,
    "Email": email,
    "Date": date,
    "Completed": isCompleted,
    "TaskName": taskName,
    "TaskDescription": taskDescription,

  };
}
}
class TaskItem {
  final String name;
  bool isDone;

  TaskItem({required this.name, this.isDone = false});

  void toggleDone() {
    isDone = !isDone;
  }
}

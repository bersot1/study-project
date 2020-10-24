import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:study_mobx_2/app/modules/todo/todo_controller.dart';

class TodoWidget extends StatelessWidget {
  final int index;

  final TodoController _todoController = Modular.get();

  TodoWidget({@required this.index});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(_todoController.todos[index]),
      trailing: IconButton(
        onPressed: () => _todoController.remove(index),
        icon: Icon(
          Icons.restore_from_trash_rounded,
        ),
      ),
    );
  }
}

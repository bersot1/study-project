import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:study_mobx_2/app/modules/todo/component/todo_widget.dart';
import 'package:study_mobx_2/app/modules/todo/todo_controller.dart';

class TodoPage extends StatefulWidget {
  @override
  _TodoPageState createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  @override
  Widget build(BuildContext context) {
    TodoController _todoController = Modular.get();

    return Scaffold(
      appBar: AppBar(
        title: TextField(
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(border: InputBorder.none),
          onChanged: (val) {
            _todoController.setText(val);
          },
        ),
        actions: [
          Observer(builder: (_) {
            return IconButton(
              icon: Icon(Icons.add),
              onPressed:
                  _todoController.text.isEmpty ? null : _todoController.save,
            );
          })
        ],
      ),
      body: Observer(builder: (_) {
        return ListView.builder(
            itemCount: _todoController.todos.length,
            itemBuilder: (_, index) {
              return TodoWidget(
                index: index,
              );
            });
      }),
    );
  }
}

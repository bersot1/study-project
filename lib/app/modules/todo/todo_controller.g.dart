// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TodoController on _TodoControllerBase, Store {
  final _$textAtom = Atom(name: '_TodoControllerBase.text');

  @override
  String get text {
    _$textAtom.reportRead();
    return super.text;
  }

  @override
  set text(String value) {
    _$textAtom.reportWrite(value, super.text, () {
      super.text = value;
    });
  }

  final _$todosAtom = Atom(name: '_TodoControllerBase.todos');

  @override
  ObservableList<String> get todos {
    _$todosAtom.reportRead();
    return super.todos;
  }

  @override
  set todos(ObservableList<String> value) {
    _$todosAtom.reportWrite(value, super.todos, () {
      super.todos = value;
    });
  }

  final _$_TodoControllerBaseActionController =
      ActionController(name: '_TodoControllerBase');

  @override
  dynamic setText(String value) {
    final _$actionInfo = _$_TodoControllerBaseActionController.startAction(
        name: '_TodoControllerBase.setText');
    try {
      return super.setText(value);
    } finally {
      _$_TodoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void save() {
    final _$actionInfo = _$_TodoControllerBaseActionController.startAction(
        name: '_TodoControllerBase.save');
    try {
      return super.save();
    } finally {
      _$_TodoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void remove(int index) {
    final _$actionInfo = _$_TodoControllerBaseActionController.startAction(
        name: '_TodoControllerBase.remove');
    try {
      return super.remove(index);
    } finally {
      _$_TodoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
text: ${text},
todos: ${todos}
    ''';
  }
}

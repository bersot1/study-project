import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:study_mobx_2/app/shared/repository/hive/local_storage_interface.dart';
part 'todo_controller.g.dart';

class TodoController = _TodoControllerBase with _$TodoController;

abstract class _TodoControllerBase with Store {
  final ILocalStorageHive storage = Modular.get();

  _TodoControllerBase() {
    init();
  }

  @observable
  String text = '';

  @action
  setText(String value) => text = value;

  @observable
  ObservableList<String> todos = <String>[].asObservable();

  @action
  init() async {
    var initialTodos = await storage.get('todos');
    if (initialTodos == null) {
      todos = <String>[].asObservable();
    } else {
      todos = initialTodos.asObservable();
    }
  }

  @action
  void save() {
    todos.add(text);
    storage.put('todos', todos);
  }

  @action
  void remove(int index) {
    todos.removeAt(index);
    storage.put('todos', todos);
  }
}

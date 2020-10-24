import 'package:flutter_modular/flutter_modular.dart';
import 'package:study_mobx_2/app/modules/todo/todo_controller.dart';
import 'package:study_mobx_2/app/modules/todo/todo_page.dart';

class TodoModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => TodoController()),
      ];
  @override
  // TODO: implement routers
  List<ModularRouter> get routers =>
      [ModularRouter('/', child: (_, __) => TodoPage())];
}

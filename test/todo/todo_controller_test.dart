// o modular tem uma facilidade para test
// importando voce consegue iniciar os seus modulos/
// para assim poder usar as instancias

import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:study_mobx_2/app/app_module.dart';
import 'package:study_mobx_2/app/modules/todo/todo_controller.dart';
import 'package:study_mobx_2/app/modules/todo/todo_module.dart';
import 'package:study_mobx_2/app/shared/repository/hive/local_storage_interface.dart';
import 'package:study_mobx_2/app/shared/repository/mock/local_storage_mock.dart';

main() {
  // para usar o init, tem que iniciar o pai e logo
  // depois os filhos que voce quer usar

  initModule(AppModule(), changeBinds: [
    Bind<ILocalStorageHive>((i) => LocalStorageMock()),
  ]);
  initModule(TodoModule());

  test('click save', () {
    final TodoController todoController = Modular.get();
    todoController.text = 'lucas';
    todoController.save();
    expect(todoController.todos.length, 1);
    expect(todoController.todos[0], 'lucas');
  });
}

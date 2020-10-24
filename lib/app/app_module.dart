import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:study_mobx_2/app/app_controller.dart';
import 'package:study_mobx_2/app/app_main_widget.dart';
import 'package:study_mobx_2/app/pages/initial_menu_page.dart';
import 'package:study_mobx_2/app/shared/auth/repositories/auth_repository.dart';
import 'package:study_mobx_2/app/shared/auth/repositories/auth_repository_interface.dart';
import 'package:study_mobx_2/app/shared/repository/hive/local_storage_hive.dart';
import 'package:study_mobx_2/app/shared/repository/hive/local_storage_interface.dart';

import 'modules/pokemon/pokemon_module.dart';
import 'modules/todo/todo_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind<IAuthRepository>((i) => AuthRepository()),
        Bind<ILocalStorageHive>((i) => LocalStorageHive()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/', child: (_, __) => InitialMenuPage()),
        ModularRouter('/pokemon', module: PokemonModule()),
        ModularRouter('/todo', module: TodoModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();
}

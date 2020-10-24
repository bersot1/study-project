import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:study_mobx_2/app/modules/pokemon/controller.dart';
import 'package:study_mobx_2/app/modules/pokemon/repositories/pokemon_repository.dart';
import 'package:study_mobx_2/app/shared/utils/constants.dart';

import 'list_pokemon_page.dart';

class PokemonModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => Controller(i.get<PokemonRepository>())),
        Bind((i) => PokemonRepository(i.get<Dio>())),
        Bind((i) => Dio(BaseOptions(baseUrl: BASE_URL))),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/', child: (_, __) => PokemonPage()),
      ];
}

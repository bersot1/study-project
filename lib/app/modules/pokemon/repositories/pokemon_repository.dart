import 'package:dio/dio.dart';
import 'package:study_mobx_2/app/modules/pokemon/model/pokemon_model.dart';

class PokemonRepository {
  final Dio dio;

  PokemonRepository(this.dio);

  Future<List<PokemonModel>> getAllPokemon() async {
    Response response = await dio.get('/pokemon');

    return (response.data["results"] as List)
        .map((e) => PokemonModel.fromJson(e))
        .toList();
  }
}

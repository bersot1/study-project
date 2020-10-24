import 'package:mobx/mobx.dart';
import 'package:study_mobx_2/app/modules/pokemon/model/pokemon_model.dart';
import 'package:study_mobx_2/app/modules/pokemon/repositories/pokemon_repository.dart';
part 'controller.g.dart';

class Controller = _ControllerBase with _$Controller;

abstract class _ControllerBase with Store {
  final PokemonRepository _pokeRepository;

  _ControllerBase(this._pokeRepository) {
    fetchPokemons();
  }

  @observable
  ObservableFuture<List<PokemonModel>> pokemons;

  @action
  fetchPokemons() {
    pokemons = _pokeRepository.getAllPokemon().asObservable();
  }
}

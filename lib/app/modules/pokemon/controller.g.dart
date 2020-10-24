// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Controller on _ControllerBase, Store {
  final _$pokemonsAtom = Atom(name: '_ControllerBase.pokemons');

  @override
  ObservableFuture<List<PokemonModel>> get pokemons {
    _$pokemonsAtom.reportRead();
    return super.pokemons;
  }

  @override
  set pokemons(ObservableFuture<List<PokemonModel>> value) {
    _$pokemonsAtom.reportWrite(value, super.pokemons, () {
      super.pokemons = value;
    });
  }

  final _$_ControllerBaseActionController =
      ActionController(name: '_ControllerBase');

  @override
  dynamic fetchPokemons() {
    final _$actionInfo = _$_ControllerBaseActionController.startAction(
        name: '_ControllerBase.fetchPokemons');
    try {
      return super.fetchPokemons();
    } finally {
      _$_ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
pokemons: ${pokemons}
    ''';
  }
}

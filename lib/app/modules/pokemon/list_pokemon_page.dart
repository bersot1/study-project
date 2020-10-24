import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:study_mobx_2/app/modules/pokemon/controller.dart';

class PokemonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Controller _pokemonController = Modular.get();

    return Scaffold(
      appBar: AppBar(
        title: Text("List of Pokemon"),
      ),
      body: Observer(
        builder: (_) {
          if (_pokemonController.pokemons.error != null) {
            return Center(
              child: RaisedButton(
                child: Text("Tente novamente"),
                onPressed: _pokemonController.fetchPokemons,
              ),
            );
          }

          if (_pokemonController.pokemons.value == null) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          var list = _pokemonController.pokemons.value;

          return ListView.builder(
              itemCount: list.length,
              itemBuilder: (_, index) {
                var item = list[index];

                return ListTile(
                  title: Text(item.name),
                );
              });
        },
      ),
    );
  }
}

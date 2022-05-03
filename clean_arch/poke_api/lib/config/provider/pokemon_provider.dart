import 'package:flutter/material.dart';
import 'package:poke_api/domain/use_case/pokemon/pokemon_use_case.dart';

class PokemonProvider extends ChangeNotifier {

  final PokemonUseCase pokemonUseCase;
  PokemonProvider( {required this.pokemonUseCase});
}
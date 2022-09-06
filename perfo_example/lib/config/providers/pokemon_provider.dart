import 'package:flutter/material.dart';
import 'package:perfo_example/pokemon/domain/use_case/pokemon/pokemon_use_case.dart';

class PokemonProvider extends ChangeNotifier {
  final PokemonUseCase pokemonUseCase;
  PokemonProvider({required this.pokemonUseCase});
}

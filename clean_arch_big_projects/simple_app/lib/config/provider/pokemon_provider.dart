import 'package:domain_wc/domain_wc.dart';
import 'package:flutter/material.dart';

class PokemonProvider extends ChangeNotifier {
  final PokemonUseCase pokemonUseCase;
  PokemonProvider({required this.pokemonUseCase});
}

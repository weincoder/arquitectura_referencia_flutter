
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemon/domain/use_cases/pokemon/pokemon_use_case.dart';
import 'package:pokemon/infraestructure/driven_adapter/api/pokemon_api/pokemon_api.dart';


final pokemonProvider = Provider<PokemonUseCase>((ref) {
  return  PokemonUseCase(PokemonApi());
});

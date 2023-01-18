import 'package:domain_wc/domain_wc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infraestructure_wc/infraestructure_wc.dart';


final pokemonProvider = Provider<PokemonUseCase>((ref) {
  return  PokemonUseCase(PokemonApi());
});

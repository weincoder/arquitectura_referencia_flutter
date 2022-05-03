

import 'package:poke_api/domain/models/pokemon/pokemon.dart';

import '../../models/pokemon/gateway/pokemon_gateway.dart';

class PokemonUseCase{
  final PokeGateway _pokeGateway;
  PokemonUseCase(this._pokeGateway);
  Future<List<PokeDetail>> getAllPokemons(){
    return _pokeGateway.getPokemons();
  }

}
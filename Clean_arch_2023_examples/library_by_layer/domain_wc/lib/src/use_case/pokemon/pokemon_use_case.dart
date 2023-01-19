import '../../models/pokemon/gateway/pokemon_gateway.dart';
import '../../models/pokemon/pokemon.dart';

class PokemonUseCase {
  final PokeGateway _pokeGateway;
  PokemonUseCase(this._pokeGateway);
  Future<List<PokeDetail>> getAllPokemons() {
    return _pokeGateway.getPokemons();
  }
}

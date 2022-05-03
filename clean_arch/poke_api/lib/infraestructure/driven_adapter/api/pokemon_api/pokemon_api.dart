

import 'package:poke_api/domain/models/pokemon/gateway/pokemon_gateway.dart';
import 'package:poke_api/domain/models/pokemon/pokemon.dart';
import 'package:http/http.dart' as http;
import 'package:poke_api/infraestructure/driven_adapter/api/pokemon_api/errors/pokemon_api_error.dart';
class PokemonApi extends PokeGateway{
  
  
  
  @override
  Future<List<PokeDetail>> getPokemons() async {
    Uri url = Uri.parse('https://pokeapi.co/api/v2/pokemon/?offset=120&limit=20');
    final response = await http.get(url);
    if(response.statusCode == 200 ){
      final pokemon = pokemonFromJson(response.body);
      final pokemonDetails = pokemon.pokeDetails;
      return pokemonDetails;
    }else {
      throw PokeApiError();
    }
  }

}
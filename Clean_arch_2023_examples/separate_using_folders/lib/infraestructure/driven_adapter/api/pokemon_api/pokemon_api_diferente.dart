import 'dart:developer';
import 'package:http/http.dart' as http;
import '../../../../domain/models/pokemon/gateway/pokemon_gateway.dart';
import '../../../../domain/models/pokemon/pokemon.dart';
import 'errors/pokemon_api_error.dart';

class PokemonApiDiferente extends PokeGateway{
  @override
  Future<List<PokeDetail>> getPokemons() async {
    log('esta api es diferente');
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
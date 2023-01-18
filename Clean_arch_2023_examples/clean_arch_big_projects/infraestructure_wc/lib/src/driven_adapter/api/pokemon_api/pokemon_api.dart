import 'package:domain_wc/domain_wc.dart';
import 'package:http/http.dart' as http;
import 'errors/pokemon_api_error.dart';

class PokemonApi extends PokeGateway {
  @override
  Future<List<PokeDetail>> getPokemons() async {
    print('a diferente API 🚀');
    Uri url =
        Uri.parse('https://pokeapi.co/api/v2/pokemon/?offset=120&limit=20');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final pokemon = pokemonFromJson(response.body);
      final pokemonDetails = pokemon.pokeDetails;
      return pokemonDetails;
    } else {
      throw PokeApiError();
    }
  }
}

import 'package:infraestructure_wc/infraestructure_wc.dart';

Future<void> main() async {
  var awesomePokemonApi = PokemonApi();
  print('pokemons: ${await awesomePokemonApi.getPokemons()}');
}

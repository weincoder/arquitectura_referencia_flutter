import 'package:infraestructure_wc/infraestructure_wc.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    var awesomePokemonApi = PokemonApi();
    setUp(() {
      // Additional setup goes here.
    });

    test('First Test', () async {
      var listPokemons = await awesomePokemonApi.getPokemons();
      print('listPokemons: $listPokemons');
      expect(listPokemons.isNotEmpty, isTrue);
    });
  });
}

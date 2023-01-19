import 'package:infraestructure_wc/infraestructure_wc.dart';
import 'package:test/test.dart';

void main() {
  group('Pokemon Api Test', () {
    test('The first name is starmie', () async {
      //arrenge
      final pokemonApi = PokemonApi();
      const expectedName = 'starmie';
      //act
      final listOfPokemons = await pokemonApi.getPokemons();
      final name = listOfPokemons[0].name;
      //assert
      expect(expectedName, name);
    });
  });
}

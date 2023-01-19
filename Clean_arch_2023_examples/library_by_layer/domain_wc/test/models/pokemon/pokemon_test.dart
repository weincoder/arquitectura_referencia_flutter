import 'package:domain_wc/domain_wc.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('a little test about gateway', (() {
    test('check the return of list of pokemons', (() {
      //arrenge
      var awesomePokemon = Pokemon(
          count: 1,
          next: '2',
          previous: '0',
          pokeDetails: [PokeDetail(name: 'Fake pokemon', url: 'fakeurl')]);
      String expectedFirstPokeName = 'Fake pokemon';
      //act
      var pokeName = awesomePokemon.pokeDetails[0].name;
      //asert
      expect(expectedFirstPokeName, pokeName);
    }));
  }));
}

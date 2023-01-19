import 'package:domain_wc/domain_wc.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('A little test about pokemon use case', () {
    test('testing the PokemonUseCase', (() async {
      //Arrenge
      PokemonUseCase pokemonUseCase = PokemonUseCase(FakeApi());
      var expectedPoke2Name = 'fake2';
      //Act
      var listOfPokemons = await pokemonUseCase.getAllPokemons();
      //Assert
      expect(expectedPoke2Name, listOfPokemons[1].name);
    }));
  });
}

class FakeApi extends PokeGateway {
  @override
  Future<List<PokeDetail>> getPokemons() {
    return Future.value([
      PokeDetail(name: 'fake1', url: 'url'),
      PokeDetail(name: 'fake2', url: 'url'),
      PokeDetail(name: 'fake3', url: 'url'),
    ]);
  }
}

import 'package:domain_wc/domain_wc.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('a little test about gateway', (() {
    test('check the return of list of pokemons', (() async {
      //arrenge
      FakeApi fakeApi = FakeApi();
      String expectedFirstPokeName = 'fake1';
      //act
      var listOfPokemons = await fakeApi.getPokemons();
      //asert
      expect(expectedFirstPokeName, listOfPokemons[0].name);
    }));
  }));
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

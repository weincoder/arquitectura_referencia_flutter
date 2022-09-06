import '../pokemon.dart';
abstract class PokeGateway {
  Future<List<PokeDetail>> getPokemons();
}
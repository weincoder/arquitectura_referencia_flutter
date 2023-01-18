class PokeApiError implements Exception{

  @override
  String toString(){
    return 'Error al obtener la lista de pokemons';
  }
}
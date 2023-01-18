class AstronomyDailyDataApiError implements Exception{

  @override
  String toString(){
    return 'Error al obtener el dato del día';
  }
}
Validando la cobertura
Para ello solo debes lanzar el comando 

flutter test --coverage
Sin embargo, si quieres verlo de una forma más agradable te recomiendo instalar lcov

brew install lcov
Y luego si puedes lanzar el siguiente comando después de tu coverage

genhtml coverage/lcov.info -o coverage/html
obteniendo un resumen como el siguiente
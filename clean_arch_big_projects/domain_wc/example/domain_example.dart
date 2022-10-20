import 'package:domain_wc/domain_wc.dart';

void main() {
  var awesome = Pokemon(
      count: 1,
      next: '2',
      previous: '0',
      pokeDetails: [PokeDetail(name: 'Fake pokemon', url: 'fakeurl')]);
  print('awesome: ${awesome.count}');
}
